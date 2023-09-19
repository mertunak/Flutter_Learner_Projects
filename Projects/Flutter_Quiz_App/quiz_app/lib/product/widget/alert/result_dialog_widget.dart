import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/border_radius_constants.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';
import 'package:quiz_app/product/constants/utils/padding_constants.dart';
import 'package:quiz_app/product/constants/utils/text_styles.dart';
import 'package:quiz_app/product/widget/card/result_card.dart';
import '../../../product/data/questions_data.dart';

import '../../navigation/navigation_constants.dart';

class ResultDialogWidget extends StatelessWidget {
  final double width;
  final double height;
  final List<String> selectedAnswers;
  
  const ResultDialogWidget({
    super.key,
    required this.width,
    required this.height, 
    required this.selectedAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: AppPaddings.MEDIUM_H,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: AppPaddings.MEDIUM_H + AppPaddings.MEDIUM_V,
        decoration: BoxDecoration(
          color: SurfaceColors.PRIMARY_COLOR,
          borderRadius: AppBorderRadius.LARGE,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(
                  iconSize: 30,
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pushNamed(NavigationConstants.HOME_VIEW);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                )
              ],
              centerTitle: true,
              title: const Text(
                "Sonuçlar",
                style: TextStyles.MEDIUM,
              ),
            ),
            Container(
              margin: AppPaddings.SMALL_V,
              constraints: BoxConstraints(maxHeight: height),
              decoration: BoxDecoration(
                color: SurfaceColors.SECONDARY_COLOR,
                borderRadius: AppBorderRadius.MEDIUM,
              ),
              child: Padding(
                padding: AppPaddings.SMALL_H + AppPaddings.SMALL_V,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ResultCard(
                      index: index,
                      question: questions[index].question,
                      correctAnswer: questions[index].answers[0],
                      userAnswer: selectedAnswers[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
