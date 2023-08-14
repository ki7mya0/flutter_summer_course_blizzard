import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/component/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              const Text(
                'iCodegram',
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              const TextFieldInput(hintText: 'Phone number', isPassword: false),
              const SizedBox(
                height: 24,
              ),
              const TextFieldInput(hintText: 'User name', isPassword: false),
              const SizedBox(
                height: 24,
              ),
              const TextFieldInput(hintText: 'Password', isPassword: true),
              const SizedBox(
                height: 24,
              ),
              const TextFieldInput(
                  hintText: 'Re-enter password', isPassword: true),
              const SizedBox(
                height: 24,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Text('Sign up'),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
