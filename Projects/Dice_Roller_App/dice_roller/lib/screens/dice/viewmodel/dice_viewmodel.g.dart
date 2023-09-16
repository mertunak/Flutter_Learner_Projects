// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiceViewModel on _DiceViewModelBase, Store {
  late final _$diceImagePathAtom =
      Atom(name: '_DiceViewModelBase.diceImagePath', context: context);

  @override
  String get diceImagePath {
    _$diceImagePathAtom.reportRead();
    return super.diceImagePath;
  }

  @override
  set diceImagePath(String value) {
    _$diceImagePathAtom.reportWrite(value, super.diceImagePath, () {
      super.diceImagePath = value;
    });
  }

  late final _$rotationValueAtom =
      Atom(name: '_DiceViewModelBase.rotationValue', context: context);

  @override
  double get rotationValue {
    _$rotationValueAtom.reportRead();
    return super.rotationValue;
  }

  @override
  set rotationValue(double value) {
    _$rotationValueAtom.reportWrite(value, super.rotationValue, () {
      super.rotationValue = value;
    });
  }

  late final _$_DiceViewModelBaseActionController =
      ActionController(name: '_DiceViewModelBase', context: context);

  @override
  void rollDice() {
    final _$actionInfo = _$_DiceViewModelBaseActionController.startAction(
        name: '_DiceViewModelBase.rollDice');
    try {
      return super.rollDice();
    } finally {
      _$_DiceViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
diceImagePath: ${diceImagePath},
rotationValue: ${rotationValue}
    ''';
  }
}
