// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:quiz_app/product/constants/utils/color_constants.dart';

class TextStyles {

  static const SMALL = TextStyle(
    color: TextColors.PRIMARY_COLOR,
    fontSize: 16,
  );
  static const MEDIUM = TextStyle(
    color: TextColors.PRIMARY_COLOR,
    fontSize: 24,
  );
  static const LARGE = TextStyle(
    color: TextColors.PRIMARY_COLOR,
    fontSize: 34,
  );
  static const RESULT_QUESTION = TextStyle(
    color: TextColors.SECONDARY_COLOR,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const FALSE_ANSWER = TextStyle(
    color: TextColors.FALSE_ANSWER,
    fontSize: 16,
  );
  static const TRUE_ANSWER = TextStyle(
    color: TextColors.TRUE_ANSWER,
    fontSize: 16,
  );
}