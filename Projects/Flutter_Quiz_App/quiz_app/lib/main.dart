import 'package:flutter/material.dart';
import 'package:quiz_app/product/navigation/navigation_constants.dart';
import 'package:quiz_app/product/navigation/route_generator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: NavigationConstants.HOME_VIEW,
    );
  }
}
