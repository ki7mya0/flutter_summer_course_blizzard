import 'package:flutter/material.dart';
import 'package:icodegram_app/component/add_story.dart';
import 'package:icodegram_app/component/watch_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late List<WatchStory> stories = [
    const WatchStory(
      name: 'Tuguldur',
    ),
    const WatchStory(
      name: 'Asra',
    ),
    const WatchStory(
      name: 'Kioshi',
    ),
    const WatchStory(
      name: 'Coy',
    ),
    const WatchStory(
      name: 'Marcel',
    ),
    const WatchStory(
      name: 'Eliot',
    ),
    const WatchStory(
      name: 'Uriel',
    ),
    const WatchStory(
      name: 'Viole',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          title: Text(
            'iCodegram',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lobster'),
          ),
        ),
        body: ListView(scrollDirection: Axis.horizontal, children: [
          AddStory(),
          SizedBox(
              width: 86 * 5,
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return WatchStory(name: "Viole");
                  })),
        ]));
  }
}
