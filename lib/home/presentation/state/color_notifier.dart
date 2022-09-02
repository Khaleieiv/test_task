import 'package:flutter/material.dart';
import 'package:test_task/common/utils/color_generation.dart';

/// Class notifies its listeners of color changes.
class ColorNotifier extends ChangeNotifier {
  Color _color = Colors.white;

  Color _colorText = Colors.black;

  /// Gets color.
  Color get color => _color;

  Color get colorText => _colorText;

  /// Method that writes color.
  void currentColor() {
    _color = ColorGeneration.generateRandomColor();
    _colorText = ColorGeneration.generateRandomColor();
    notifyListeners();
  }
}
