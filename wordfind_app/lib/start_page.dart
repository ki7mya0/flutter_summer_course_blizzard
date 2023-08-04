import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/task_page.dart';
import 'package:wordfind_app/models/user_model.dart';

// class StartPage extends StatelessWidget {
//   const StartPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFBF5F2),
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Image.asset('assets/images/arrow_back.png'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: SizedBox(
//           height: 50.0,
//           child: Image.asset('assets/images/game_logo.png'),
//         ),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('assets/images/back2.png'),
//                 fit: BoxFit.cover)),
//         child: Center(
//           child: Column(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.only(top: 50),
//               ),
//               Image.asset('assets/images/iCodeGuyHead.png'),
//               const Padding(padding: EdgeInsets.only(top: 20)),
//               const GradientText('Player Name', 20.0),
//               const SizedBox(
//                 height: 20,
//               ),
//               const InputField()
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: const StartButton(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
//
class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
          ),
          borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TaskPage()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: const Text(
          'START',
          style: TextStyle(
              fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

User newUser = User("Guest", 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image.asset('assets/images/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back2.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Image.asset('assets/images/iCodeGuyHead.png'),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const GradientText('Player Name', 20.0),
              const SizedBox(
                height: 20,
              ),
              const InputField()
            ],
          ),
        ),
      ),
      floatingActionButton: const StartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  void _createUser(String userName){
    setState(() {
      newUser.userName = userName;
    });
  }
}
