import 'dart:math';

import 'package:flutter/material.dart';

/// Color generation class.
class ColorGeneration {
  /// Max color value in RGB.
  static const maxValue = 256;

  /// Randomizer.
  static final _random = Random();

  /// Method that returns a random color.
  static Color generateRandomColor() {
    return Color.fromRGBO(
      _randomRGBValue(),
      _randomRGBValue(),
      _randomRGBValue(),
      _random.nextDouble(),
    );
  }

  static int _randomRGBValue() {
    final randomValue = _random.nextInt(maxValue);

    return randomValue;
  }
}
