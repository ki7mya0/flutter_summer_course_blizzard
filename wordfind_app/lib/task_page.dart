import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: (

              ) {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text( 'text',
            style: TextStyle(fontSize: 24, color: Color(0xFFE86B02))),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back2.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Expanded(child: Container()),
              Container(
                width: 150,
                decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFE86B02), Color(0xFFFA9541)]
                    ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    )
                  ),
                  child: const Text(
                    'Reload',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
