// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:icodegram_app/screens/home_screen.dart';
import 'package:icodegram_app/screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: 'Rubik'),
    ),
    home: const HomeScreen(),
  ));
}