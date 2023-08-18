import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/component/text_field.dart';
import 'package:lesson_20_flutter/recources/auth_method.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

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
              TextFieldInput(
                hintText: 'Email',
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'User name',
                isPassword: false,
                textEditingController: _userNameController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Re-enter password',
                isPassword: true,
                textEditingController: _rePasswordController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 24,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              InkWell(
                onTap: () {
                  AuthMethods().signUpUser(
                      email: _emailController.text,
                      username: _userNameController.text,
                      password: _passwordController.text);
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.blue),
                  child: const Text('Sign up'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
