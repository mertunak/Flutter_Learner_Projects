import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColoredBox(
          color: SurfaceColors.PRIMARY_COLOR,
          child: Text("1"),
        ),
        Column(
          children: [
            Text("Question"),
            Text("Correct Answer"),
            Text("Your Answer"),
          ],
        )
      ],
    );
  }
}
