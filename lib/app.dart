import 'package:flutter/material.dart';
import 'package:math_trails/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Trails | Firebase App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: RouteGenerator.homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
