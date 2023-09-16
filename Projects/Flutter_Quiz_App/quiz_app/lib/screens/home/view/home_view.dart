import 'package:flutter/material.dart';
import 'package:quiz_app/core/base/state/base_state.dart';
import 'package:quiz_app/product/constants/texts/image_constants.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';
import 'package:quiz_app/product/navigation/navigation_constants.dart';
import 'package:quiz_app/product/widget/background_widget.dart';

class HomeView extends BaseStatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundBuilder(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 4,
              child: buildLogo(),
            ),
            const Spacer(),
            Expanded(
              child: buildText(),
            ),
            Expanded(
              child: buildQuizStartButton(context),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  Text buildText() {
    return const Text(
      "Learn Flutter the fun way!",
      style: TextStyle(
        color: TextColors.PRIMARY_COLOR,
        fontSize: 24,
      ),
    );
  }

  Image buildLogo() {
    return Image.asset(
      ImageConstants.QUIZ_LOGO_PATH,
    );
  }

  Padding buildQuizStartButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () => 
            Navigator.of(context).pushNamed(NavigationConstants.QUESTION_VIEW),

        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: SurfaceColors.PRIMARY_COLOR,
        ),
        icon: const Icon(Icons.arrow_right_rounded),
        label: const Text("Start Quiz"),
      ),
    );
  }
}
