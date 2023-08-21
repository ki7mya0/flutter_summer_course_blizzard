import 'package:flutter/material.dart';

class WatchStory extends StatefulWidget {
  final String name;
  const WatchStory({super.key, required this.name});

  @override
  State<WatchStory> createState() => WatchStoryState();
}

class WatchStoryState extends State<WatchStory> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 85,
        height: 104,
        child: Column(
          children: [
            SizedBox(height: 80, width: 80,
              child: ClipOval(
                child: Image.asset('assets/images/profile.png'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text( widget.name )
          ],
        ),

      ),
    );
  }
}
