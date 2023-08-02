import 'package:day_14_flutter/profile_screen.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(const MaterialApp(
    home: Scaffold(
      body: StopWatchApp(),
    ),
  ));
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileScreen();
  }
}
