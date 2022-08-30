import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:test_task/home/presentation/state/color_notifier.dart';

/// Home page of the application.
class HomePage extends StatefulWidget {
  /// Constructor of the home page.
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  child: const Center(
                    child: Text(
                      'Hey there',
                      style: TextStyle(),
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
  }
}
