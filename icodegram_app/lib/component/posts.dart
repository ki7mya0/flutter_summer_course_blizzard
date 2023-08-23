import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => PostsState();
}

class PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile.png',
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('Viole',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/photo.png",
                width: 375,
                height: 375,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset('assets/images/fi_heart.png',
                      height: 24, width: 24,),
                  ),
                  const SizedBox(width: 10,),
                  const Text('12',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text('joshua_1',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                    ),
                    SizedBox(width: 10,),
                    Text('Have a nice day',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
