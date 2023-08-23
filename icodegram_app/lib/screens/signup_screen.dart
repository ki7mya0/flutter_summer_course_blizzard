import 'package:flutter/material.dart';
import 'package:icodegram_app/component/text_field.dart';
import 'package:icodegram_app/resources/auth_method.dart';
import 'package:icodegram_app/screens/login_screen.dart';

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
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

  void signUpUser() async {
    String result = await AuthMethods().signUpUser(
        email: _emailController.text, username: _userNameController.text, password: _passwordController.text);
    setState(() {
      _isLoading = true;
    });
    if (result == 'success') {
      setState(() {
        _isLoading = false;
      });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));

      print('Logged in');
    } else {
      setState(() {
        _isLoading = false;
      });
      print('Not logged in');
    }
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
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lobster'),
              ),
              const SizedBox(
                height: 35,
              ),
              TextFieldInput(
                hintText: 'Цахим шуудан',
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.phone,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 13,
              ),
              TextFieldInput(
                hintText: 'Хэрэглэгчийн нэр',
                isPassword: false,
                textEditingController: _userNameController,
                textInputType: TextInputType.text,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 13,
              ),
              TextFieldInput(
                hintText: 'Нууц үг',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 13,
              ),
              TextFieldInput(
                hintText: 'Нууц үг давтах',
                isPassword: true,
                textEditingController: _rePasswordController,
                textInputType: TextInputType.text,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: signUpUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE86B02),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                  child: _isLoading
                      ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ))
                      : const Text('Бүртгүүлэх'),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/line.png')
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Эсвэл',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(height: 35),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Бүртгэлтэй юу?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          child: const Text('Нэвтрэх',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFE86B02))),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
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
