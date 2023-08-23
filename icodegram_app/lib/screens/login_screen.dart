import 'package:flutter/material.dart';
import 'package:icodegram_app/component/text_field.dart';
import 'package:icodegram_app/screens/signup_screen.dart';
import 'package:icodegram_app/resources/auth_method.dart';
import 'package:icodegram_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void loginUser() async {
    String result = await AuthMethods().loginUser(
        email: _phonenumberController.text, password: _passwordController.text);
    setState(() {
      _isLoading = true;
    });
    if (result == 'success') {
      setState(() {
        _isLoading = false;
      });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));

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
                  fontFamily: 'Lobster',
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFieldInput(
              hintText: 'Нэтрэх нэр',
              isPassword: false,
              textEditingController: _phonenumberController,
              textInputType: TextInputType.phone,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFieldInput(
                hintText: 'Нууц үг',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
                style: const TextStyle(fontSize: 15)),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: loginUser,
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
                    : const Text('Нэвтрэх'),
              ),
            ),
            const SizedBox(
              height: 10,
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
                        'Шинэ хэрэглэгч үү?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                     InkWell(
                       onTap: () {
                         Navigator.push(
                             context, MaterialPageRoute(builder: (context) => const SignUp()));
                       } ,
                       child:  const Text('Бүртгүүлэх',
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
            Flexible(flex: 2, child: Container()),
          ],
        ),
      )),
    );
  }
}
