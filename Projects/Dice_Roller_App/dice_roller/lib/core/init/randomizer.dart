import 'dart:math';

class Randomizer{

  static Randomizer? _instance;

  final Random _random = Random();
  Random get random => _random;

  Randomizer._init();
  static Randomizer get instance {
    _instance ??= Randomizer._init();
    return _instance!;
  }
}