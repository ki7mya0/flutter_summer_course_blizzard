import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  late List<String>names = [
    'Pummel', 'Bruno', 'Moana', 'Darienne', 'Asra',
    'Lydia', 'Marcel', 'Kimya', 'Kioshi', 'Coy',
    'Dokja', 'Uriel', 'Eliot', 'Seol', 'Vivienne',
    'Alice', 'Rintoshi', 'Feitan', 'Maru', 'Aqua',
    'Endorsi', 'Viole', 'Aguero', 'Khun', 'Solon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
              child: Text(names[index]),
            );
          }),
    );
  }
}
