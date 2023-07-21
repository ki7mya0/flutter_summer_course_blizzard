import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText('Game', 35.6),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              GradientLetter('W'),
              GradientLetter('O'),
              GradientLetter('R'),
              GradientLetter('D')
            ],
            )
          ],
        )
      ),
      floatingActionButton: 
      Container(
        width: 310, height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFE86B02),  Color(0xFFFA9541)
            ],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,), child: null,
        ),
      ),
    );
  }
}
