import 'package:flutter/foundation.dart'; // needed for `kDebugMode`
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:math_trails/utils/firebase/firestore/firestore.service.dart';
import 'package:math_trails/utils/firebase/firebase_options.dart';

class AppSetup {
  static Future<void> runSetup() async {
      WidgetsFlutterBinding.ensureInitialized();
      
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      // Start Emulators for local testing of Firebase services
      // Prevents reading/writing to production.
      // This snippet will get removed in release mode automatically.
      if (kDebugMode) {
        try {
          firestore.useFirestoreEmulator('localhost', 8080);
          debugPrint("Started Firestore emulator on port 8080");
        } catch (e) {
          // ignore: avoid_print
          print(e);
        }
      }
  }
}