import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_notebook/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (Firebase.apps.length == 0) {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB3Ij0DMC5EInjgXRyEW0QsvxTFbmjJe5U",
        authDomain: "flutterfirediary.firebaseapp.com",
        projectId: "flutterfirediary",
        storageBucket: "flutterfirediary.appspot.com",
        messagingSenderId: "249905699634",
        appId: "1:249905699634:android:c24545e5535a12f030952b"),
  );
  // } else {
  // Firebase.app();
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: HomeScreen(),
    );
  }
}
