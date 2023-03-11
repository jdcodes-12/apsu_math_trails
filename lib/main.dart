import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:math_trails/utils/DataUploader.util.dart';
import 'package:math_trails/utils/firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await DataUploader.uploadData();
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
            "Home Screen"
          ),
        ),
      ),
    );
  }
}
