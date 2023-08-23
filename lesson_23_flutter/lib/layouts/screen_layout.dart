import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_23_flutter/screens/home_screen.dart';
import 'package:lesson_23_flutter/screens/add_post_screen.dart';
import 'package:lesson_23_flutter/screens/profile_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => ScreenLayoutState();
}

class ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController ;

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
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            const HomeScreen(),
            const AddPost(),
            const ProfileScreen()
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: _page == 0 ? Colors.blue : Colors.black,
              ),
              label: '',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_rounded,
                color: _page == 1 ? Colors.blue : Colors.black,
              ),
              label: '',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_rounded,
                color: _page == 2 ? Colors.blue : Colors.black,
              ),
              label: '',
              backgroundColor: Colors.white),
        ],
        onTap: navigationTapped,
      ),
    );
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
