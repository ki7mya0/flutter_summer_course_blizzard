import 'package:day_14_flutter/stop_watch.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: StopWatchApp(),
    ),
  ));
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StopWatch();
  }
}
