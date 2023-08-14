import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const TextFieldInput({super.key, required this.hintText, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: this.hintText,
          border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context)),
          focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context)),
          enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context)),
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: TextInputType.text,
      obscureText: this.isPassword,
    );
  }
}
