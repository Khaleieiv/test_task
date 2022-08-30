import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/home/presentation/state/color_notifier.dart';

/// Class that stores notifier.
class InjectionContainer extends StatefulWidget {
  /// Widget that calls of the injection container.
  final Widget child;

  /// Constructor of the injection container.
  const InjectionContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<InjectionContainer> createState() => _InjectionContainerState();
}

class _InjectionContainerState extends State<InjectionContainer> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorNotifier(),
      child: widget.child,
    );
  }
}
