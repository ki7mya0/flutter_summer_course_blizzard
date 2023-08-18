import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Text(
                'iCodegram',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lobster'
                ),
              ),
              Row(
                children: [
                 Container(
                   decoration: const BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage('assets/images/inneroval.png'),
                       ),
                   ),
                 )
                ]
              ),
              const Text(
                  "Нэмэх",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )
              )
            ],
          ),
        )
    );
  }
}
