import 'package:day_17_flutter_navigation/page_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: MainPage(),
    ),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PageOne()));
          },
          child: const Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
      body: const Center(
        child: Text('HOME PAGE'),
      ),
    );
  }
}
