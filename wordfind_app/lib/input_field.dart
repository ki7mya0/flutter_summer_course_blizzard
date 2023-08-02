 import 'package:flutter/material.dart';
import 'package:wordfind_app/task_page.dart';
//
// class InputField extends StatelessWidget {
//   const InputField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 310,
//       height: 50,
//       child: TextField(
//         onSubmitted: (String value){},
//         maxLines: 1,
//         style: const TextStyle(
//           color: Color(0xFFE86B02),
//           fontSize: 18,
//           fontFamily: 'Nunito',
//           fontWeight: FontWeight.w600
//         ),
//         decoration: InputDecoration(
//           contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
//           filled: true,
//           fillColor: Colors.white,
//           prefixIcon: const Icon(Icons.person, color: Color(0xFFE86B02)),
//           hintText: 'Your name',
//           hintStyle: const TextStyle(
//             color: Color(0xFFE86B02)),
//           suffixIcon: IconButton(onPressed: (){},
//               icon: const Icon(Icons.clear, color: Color(0xFFE86B02),)),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(25),
//             borderSide: const BorderSide(width: 0, style: BorderStyle.none)
//           )
//         ),
//       ),
//     );
//   }
// }


class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 50,
      child: TextField(
        onSubmitted: (String value){},
        maxLines: 1,
        style: const TextStyle(
          color: Color(0xFFE86B02),
          fontSize: 18,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.person, color: Color(0xFFE86B02)),
          hintText: 'Your name',
          hintStyle: const TextStyle(
            color: Color(0xFFE86B02)),
          suffixIcon: IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TaskPage()));
          },
              icon: const Icon(Icons.clear, color: Color(0xFFE86B02),)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)
          )
        ),
      ),
    );
  }
}