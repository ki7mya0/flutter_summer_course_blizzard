import 'package:flutter/material.dart';

void main() {
  print('day 11 flutter application');
  //widget

  const MaterialApp myApp = MaterialApp(
      home: Center(
    child: Text(
      'Hello Blizzard',
      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 40),
    ),
  ));

  MaterialApp myNextApp = MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: const Scaffold(
      body: Center(
        child: Text(
          'Hello Blizzard',
          style: TextStyle(color: Color(0x410061FF), fontSize: 40),
        ),
      ),
    ),
  );
  final MyNiceApp temujin = MyNiceApp();

  runApp(temujin);
}

class MyNiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: 'My Nice App',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MY NICE APP'),
        ),
        body: Container(
            child: const Center(
          child: Text(
            'HELLO BLIZZARD',
            style: TextStyle(color: Color(0x410061FF), fontSize: 40),
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset(
            'assets/Facebook_Thumb_icon.svg.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}
