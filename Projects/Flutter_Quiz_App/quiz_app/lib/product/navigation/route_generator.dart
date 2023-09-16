import 'package:flutter/material.dart';
import 'package:quiz_app/product/navigation/navigation_constants.dart';
import 'package:quiz_app/screens/home/view/home_view.dart';
import 'package:quiz_app/screens/questions/view/question_view.dart';

class RouteGenerator {
  RouteGenerator._init();
  static RouteGenerator? _instance;
  static RouteGenerator get instance {
    _instance ??= RouteGenerator._init();
    return _instance!;
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case NavigationConstants.HOME_VIEW:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case NavigationConstants.QUESTION_VIEW:
        return MaterialPageRoute(
          builder: (_) => const QuestionView(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
