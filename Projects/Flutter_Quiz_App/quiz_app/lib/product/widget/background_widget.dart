import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';

class BackGroundBuilder extends StatelessWidget {
  final Widget child;

  const BackGroundBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            SurfaceColors.PRIMARY_COLOR,
            SurfaceColors.SECONDARY_COLOR,
          ],
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
