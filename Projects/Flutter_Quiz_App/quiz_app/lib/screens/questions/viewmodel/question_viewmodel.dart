import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:quiz_app/core/base/viewmodel/base_viewmodel.dart';
import '../../../product/data/questions_data.dart';
import '../../../product/models/question/question_model.dart';
import '../../../product/widget/alert/result_dialog_widget.dart';

part 'question_viewmodel.g.dart';

class QuestionViewModel = _QuestionViewModelBase with _$QuestionViewModel;

abstract class _QuestionViewModelBase extends BaseViewModel with Store {
  int currentQuestionIndex = 0;

  List<String> selectedAnswers = [];


  @observable
  QuestionModel currentQuestion = questions[0];

  @action
  void answerQuestion(String selectedAnswer, BuildContext context) {
    currentQuestionIndex++;

    if (currentQuestionIndex < questions.length) {
      currentQuestion = questions[currentQuestionIndex];
      selectedAnswers.add(selectedAnswer);
    } else {
      selectedAnswers.add(selectedAnswer);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return ResultDialogWidget(
              width: dyanmicWidthDevice(context, 0.8),
              height: dynamicHeightDevice(context, 0.5),
              selectedAnswers: selectedAnswers,
            );
          });
    }
  }

  @override
  void setContext(BuildContext context) {
    viewModelContext = context;
  }

  @override
  void init() {}
}
