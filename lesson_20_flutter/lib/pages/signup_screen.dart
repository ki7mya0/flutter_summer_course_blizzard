import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lesson_20_flutter/component/text_field.dart';
import 'package:lesson_20_flutter/resources/auth_method.dart';
import 'package:lesson_20_flutter/screens/ultis/ultis.dart';

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
  Uint8List? _image;

     selectImage() async {
       Uint8List image = await pickImage(source: ImageSource.gallery);
       setState(() {
         _image = image;
       });
     }

@override
  void initState() {
    setState(() {
      _image = null;
    });
    super.initState();
  }

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
                  fontFamily: 'Lobster',
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  _image != null ? CircleAvatar(
                    radius: 64,
                    backgroundImage: MemoryImage(_image!),
                  ) : const CircleAvatar(
                      radius: 64,
                    backgroundImage: NetworkImage("https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png"),
                  ),
                Positioned(
                  bottom: -10,
                    left: 80,
                    child: IconButton(
                      icon: const Icon(Icons.add_a_photo),
                      onPressed: selectImage,
                    )
                )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              TextFieldInput(
                hintText: 'Email',
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 14,
              ),
              TextFieldInput(
                hintText: 'User name',
                isPassword: false,
                textEditingController: _userNameController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 14,
              ),
              TextFieldInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 14,
              ),
              TextFieldInput(
                hintText: 'Re-enter password',
                isPassword: true,
                textEditingController: _rePasswordController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 10,
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
                      password: _passwordController.text,
                      file: null);
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
