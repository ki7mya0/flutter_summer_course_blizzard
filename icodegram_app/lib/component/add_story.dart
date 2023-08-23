import 'package:flutter/material.dart';

class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 104,
        width: 85,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(
                    color: Colors.white54,
                    width: 2
                  )
                ),
                child: TextButton(
                  onPressed: (){},
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white54,
                      size: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Нэмэх'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
