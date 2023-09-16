import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/text_styles.dart';

import '../../constants/utils/border_radius_constants.dart';
import '../../constants/utils/color_constants.dart';
import '../../constants/utils/padding_constants.dart';

class AnswerButtonWidget extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const AnswerButtonWidget({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.SMALL_V,
      child: ClipRRect(
        borderRadius: AppBorderRadius.LARGE,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            overlayColor: const MaterialStatePropertyAll(SurfaceColors.PRIMARY_COLOR),
            onTap: onTap,
            child: Ink(
              color: SurfaceColors.SECONDARY_COLOR,
              padding: AppPaddings.MEDIUM_V + AppPaddings.LARGE_H,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  answerText,
                  style: TextStyles.SMALL,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
