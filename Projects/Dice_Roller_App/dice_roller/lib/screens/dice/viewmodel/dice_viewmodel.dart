import 'package:dice_roller/core/constants/app_constants.dart';
import 'package:dice_roller/core/init/randomizer.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base/viewmodel/base_viewmodel.dart';

part 'dice_viewmodel.g.dart';

class DiceViewModel = _DiceViewModelBase with _$DiceViewModel;

abstract class _DiceViewModelBase extends BaseViewModel with Store{
  
  @observable
  String diceImagePath = "${AppConstants.IMAGE_ASSET_PATH}dice-6.png";
  
  @observable
  double rotationValue = 0;

  @action
  void rollDice(){
    
    diceImagePath = "${AppConstants.IMAGE_ASSET_PATH}dice-${randomDiceNumber()}.png";
    rotationValue = randomRotation();
  }

  @override
  void setContext(BuildContext context) {
    viewModelContext = context;
  }

  @override
  void init() {}

  String randomDiceNumber() {
      return (Randomizer.instance.random.nextInt(6) + 1).toString();
  }

  double randomRotation() {
      return Randomizer.instance.random.nextDouble() * 180;
  }
}