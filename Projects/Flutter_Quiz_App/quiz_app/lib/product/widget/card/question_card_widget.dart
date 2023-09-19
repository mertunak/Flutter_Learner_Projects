import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/padding_constants.dart';
import 'package:quiz_app/product/constants/utils/text_styles.dart';
import '../../constants/utils/color_constants.dart';

class QuestionCardWidget extends StatelessWidget {
  final String questionText;

  const QuestionCardWidget({
    super.key,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.MEDIUM_V + AppPaddings.LARGE_H,
      decoration: const BoxDecoration(
        color: SurfaceColors.PRIMARY_COLOR,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(64, 48),
          bottomRight: Radius.elliptical(64, 48),
        ),
      ),
      child: Center(
          child: Text(
        questionText,
        style: TextStyles.MEDIUM,
        textAlign: TextAlign.center,
      )),
    );
  }
}
