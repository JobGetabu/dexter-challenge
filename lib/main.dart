import 'package:dexter_todo/firebase_options.dart';
import 'package:dexter_todo/screens/fake_login.dart';
import 'package:dexter_todo/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/colors.dart';

void main() async {
  await _initFirebase();
  runApp(const MyApp());
}

Future<void> _initFirebase() async {
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );

  } catch (e) {
    debugPrint('Firebase services not init');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dexter Todo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        focusColor: gray90,
        hintColor: gray90,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: FakeLogin(),
    );
  }
}

