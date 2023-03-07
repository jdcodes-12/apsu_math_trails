import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:math_trails/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math Trails | Firebase App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            "Hello World"
          ),
        ),
      ),
    );
  }
}
