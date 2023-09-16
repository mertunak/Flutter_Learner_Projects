import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quiz_app/core/base/view/base_view.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';
import 'package:quiz_app/product/widget/background_widget.dart';
import 'package:quiz_app/product/widget/card/question_card_widget.dart';
import '../../../core/base/state/base_state.dart';
import '../../../product/constants/utils/padding_constants.dart';
import '../../../product/widget/button/answer_button_widget.dart';
import '../viewmodel/question_viewmodel.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends BaseState<QuestionView> {
  late QuestionViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseStatefulView<QuestionViewModel>(
        viewModel: QuestionViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          viewModel = model;
        },
        onPageBuilder: (context, value) => buildPage);
  }

  Widget get buildPage => Scaffold(
        appBar: AppBar(
          backgroundColor: SurfaceColors.PRIMARY_COLOR,
          title: const Text("Questions"),
        ),
        body: BackGroundBuilder(
          child: Observer(builder: (_) {
            return Column(
              children: [
                Expanded(
                  flex: 2,
                  child: QuestionCardWidget(
                      questionText: viewModel.currentQuestion.question),
                ),
                Expanded(
                  flex: 3,
                  child: buildAnswers(),
                ),
              ],
            );
          }),
        ),
      );

  Padding buildAnswers() {
    return Padding(
      padding: AppPaddings.LARGE_V + AppPaddings.LARGE_H,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: viewModel.currentQuestion.answers.length,
        itemBuilder: (context, index) {
          return AnswerButtonWidget(
            answerText: viewModel.currentQuestion.shuffledAnswers[index],
            onTap: () => viewModel.answerQuestion(viewModel.currentQuestion.shuffledAnswers[index], context),
          );
        },
      ),
    );
  }
}
