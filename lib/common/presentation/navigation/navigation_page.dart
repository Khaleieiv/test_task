import 'package:flutter/material.dart';
import 'package:test_task/common/config/route_names.dart';
import 'package:test_task/common/presentation/injector/injection_container.dart';
import 'package:test_task/home/presentation/pages/home_page.dart';

/// Navigation page of the application
class NavigationPage extends StatelessWidget {
  /// Constructor of the navigation page
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InjectionContainer(
      child: MaterialApp(
        initialRoute: RouteNames.homePage,
        routes: {
          RouteNames.homePage: (_) => const HomePage(),
        },
      ),
    );
  }
}
