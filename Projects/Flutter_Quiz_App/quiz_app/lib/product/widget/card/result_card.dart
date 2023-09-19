import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';
import 'package:quiz_app/product/constants/utils/padding_constants.dart';
import 'package:quiz_app/product/constants/utils/text_styles.dart';

class ResultCard extends StatelessWidget {
  final int index;
  final String question;
  final String correctAnswer;
  final String userAnswer;

  const ResultCard({
    super.key,
    required this.index,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.SMALL_V,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: SurfaceColors.PRIMARY_COLOR,
            child: Text(
              (index + 1).toString(),
              style: TextStyles.SMALL,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 19,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: TextStyles.RESULT_QUESTION,
                ),
                Text(
                  correctAnswer,
                  style: TextStyles.SMALL,
                ),
                Text(
                  userAnswer,
                  style: userAnswer == correctAnswer ? TextStyles.TRUE_ANSWER : TextStyles.FALSE_ANSWER,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
