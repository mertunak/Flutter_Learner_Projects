import 'package:dice_roller/core/base/state/base_state.dart';
import 'package:dice_roller/core/base/view/base_view.dart';
import 'package:dice_roller/product/constants/button_constants.dart';
import 'package:dice_roller/screens/dice/viewmodel/dice_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DiceView extends StatefulWidget {
  const DiceView({super.key});

  @override
  State<DiceView> createState() => _DiceViewState();
}

class _DiceViewState extends BaseState<DiceView> {
  late DiceViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<DiceViewModel>(
        viewModel: DiceViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          viewModel = model;
        },
        onPageBuilder: (context, value) => buildPage);
  }

  Widget get buildPage => Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildDice(),
            const SizedBox(
              height: 50,
            ),
            buildButton(),
          ],
        ),
      );

  Observer buildDice() {
    return Observer(builder: (_) {
      return Transform.rotate(
        angle: viewModel.rotationValue,
        child: Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: Image.asset(viewModel.diceImagePath),
            ),
            const Spacer(),
          ],
        ),
      );
    });
  }

  ElevatedButton buildButton() {
    return ElevatedButton(
      style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
          backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent)),
      onPressed: () => viewModel.rollDice(),
      child: Text(
        ButtonConstants.ROLL_DICE_BUTTON_TEXT,
        style: themeData.textTheme.headlineSmall!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
