// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icodegram_app/component/add_post.dart';
import 'package:icodegram_app/component/add_story.dart';
import 'package:icodegram_app/component/watch_story.dart';
import 'package:icodegram_app/component/posts.dart';
import 'package:icodegram_app/screens/profile_screen.dart';

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
  ];
  late List<Posts> posts = [Posts()];

  int _screen = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        title: const Text(
          'iCodegram',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, fontFamily: 'Lobster'),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(10),
                        child: WatchStory(
                          name: 'Hi',
                        ),
                      );
                    }),
              ),
              Flexible(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return  Container(
                          child: Text('hi'),
                        );
                      }))
            ],
          ),
        ),
      ),

      // CustomScrollView(
      //   slivers: [
      //     SliverList(
      //         delegate: SliverChildListDelegate([
      //           SizedBox(
      //             height: 130,
      //             child: Padding(
      //               padding: EdgeInsets.symmetric(vertical: 18),
      //               child: ListView(
      //                 scrollDirection: Axis.horizontal,
      //                 children: [
      //                   const AddStory(),
      //                   SizedBox(
      //                     width: 86 * 5,
      //                     height: 130,
      //                     child: ListView.builder(
      //                         scrollDirection: Axis.horizontal,
      //                         itemBuilder: (context, index) {
      //                           return WatchStory(name: 'name');
      //                         }),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ),
      //
      //         ])),
      //     SliverList(
      //         delegate: SliverChildListDelegate([
      //           // for(var i = 1; i < 100; i++)
      //           //    ListTile(
      //           //     leading: CircleAvatar(),
      //           //     title: Text(i.toString()),
      //           //   )
      //
      //
      //
      //         ])),
      //   ],
      // )
      // body: SafeArea(
      //   child: ListView(scrollDirection: Axis.horizontal, children: [
      //     const AddStory(),
      //     SizedBox(
      //         width: 85 * 5,
      //         height: 130,
      //         child: ListView.builder(
      //             scrollDirection: Axis.horizontal,
      //             itemCount: 8,
      //             itemBuilder: (context, index) {
      //               return const WatchStory(name: "Viole");
      //             })),
      //     SizedBox(
      //       height: 21,
      //     ),
      //     Column(
      //       children: [
      //         ListView(
      //           scrollDirection: Axis.vertical,
      //           children: [
      //             Posts(),
      //             SizedBox(
      //                 width: 375,
      //                 height: 375,
      //                 child: ListView.builder(
      //                     scrollDirection: Axis.vertical,
      //                     itemCount: 3,
      //                     itemBuilder: (context, index) {
      //                       return Posts();
      //                     }))
      //           ],
      //         )
      //       ],
      //     ),
      // PageView(
      //   physics: const NeverScrollableScrollPhysics(),
      //   controller: pageController,
      //   onPageChanged: onPageChanged,
      //   children: const [
      //     HomeScreen(),
      //     ProfileScreen(),
      //     AddPost()
      //   ],
      // )
      //   ]),
      // ),
      // bottomNavigationBar: CupertinoTabBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_rounded,
      //           color: _screen == 0 ? Colors.orange : Colors.grey,
      //         ),
      //         label: '',
      //         backgroundColor: Colors.transparent),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.add_box_rounded,
      //           color: _screen == 1 ? Colors.orange : Colors.grey,
      //         ),
      //         label: '',
      //         backgroundColor: Colors.transparent),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person_rounded,
      //           color: _screen == 2 ? Colors.orange : Colors.grey,
      //         ),
      //         label: '',
      //         backgroundColor: Colors.transparent),
      //   ],
      //   onTap: navigationTapped,
      // ),
    );
  }

  void navigationTapped(int screen) {
    pageController.jumpToPage(screen);
  }

  onPageChanged(int screen) {
    setState(() {
      _screen = screen;
    });
  }
}
