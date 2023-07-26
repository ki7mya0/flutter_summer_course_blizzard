import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back1.png'), fit: BoxFit.cover)),
    )
        )
    );
  }
}
