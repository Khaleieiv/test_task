import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:test_task/common/utils/color_generation.dart';
import 'package:test_task/home/presentation/state/color_notifier.dart';

/// Home page of the application.
class HomePage extends StatefulWidget {
  /// Constructor of the home page.
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String label = '';
  final String chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';

  @override
  Widget build(BuildContext context) {
    final colorNotifier = context.watch<ColorNotifier>();
    const ripplesCount = 50;

    return Scaffold(
      body: RippleAnimation(
        duration: const Duration(seconds: 5),
        repeat: true,
        color: colorNotifier.color,
        ripplesCount: ripplesCount,
        child: GestureDetector(
          onTap: _onPressedScreen,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  color: colorNotifier.color,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        label.length,
                        (index) => _LetterLabel(letter: label[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPressedScreen() {
    final colorNotifier = context.read<ColorNotifier>();
    colorNotifier.currentColor();
    setState(() {
      final random = Random();
      final letterRandom = List.generate(
        10,
        (index) => chars[random.nextInt(chars.length)],
      ).join();
      label = letterRandom;
    });
  }
}

class _LetterLabel extends StatelessWidget {
  final String letter;

  const _LetterLabel({Key? key, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = 30.0;

    return Text(
      letter,
      style: TextStyle(
        fontSize: fontSize,
        color: ColorGeneration.generateRandomColor(),
      ),
    );
  }
}
