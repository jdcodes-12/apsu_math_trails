import 'package:flutter/material.dart';
import 'package:math_trails/utils/AppSetup.util.dart';
import 'package:math_trails/app.widget.dart';

Future<void> main() async {
  await AppSetup.runSetup();
  runApp(const App());
}


