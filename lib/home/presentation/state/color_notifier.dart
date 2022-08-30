import 'package:flutter/material.dart';
import 'package:test_task/common/utils/color_generation.dart';

/// Class notifies its listeners of color changes.
class ColorNotifier extends ChangeNotifier {
  Color _color = Colors.white;

  /// Gets color.
  Color get color => _color;

  /// Method that writes color.
  void currentColor() {
    final currentColor = ColorGeneration.generateRandomColor();
    _color = currentColor;
    notifyListeners();
  }
}
