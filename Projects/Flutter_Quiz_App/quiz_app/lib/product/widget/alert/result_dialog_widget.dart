import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/border_radius_constants.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';
import 'package:quiz_app/product/constants/utils/padding_constants.dart';
import 'package:quiz_app/product/constants/utils/text_styles.dart';

import '../../navigation/navigation_constants.dart';

class ResultDialogWidget extends StatelessWidget {
  final double width;
  final double height;

  const ResultDialogWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: width,
        constraints: BoxConstraints(
          maxHeight: height
        ),
        padding: AppPaddings.MEDIUM_H + AppPaddings.MEDIUM_V,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
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
                  splashRadius: 20,
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(NavigationConstants.HOME_VIEW);
                  },
                  icon: const Icon(Icons.close),
                )
              ],
              centerTitle: true,
              title: const Text(
                "Sonuçlar",
                style: TextStyles.MEDIUM,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: SurfaceColors.SECONDARY_COLOR,
                borderRadius: AppBorderRadius.MEDIUM,
              ),
              child: Center(child: Text(" . "*200)),
            ),
          ],
        ),
      ),
    );
  }
}
