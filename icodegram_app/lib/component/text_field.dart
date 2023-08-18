// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final TextStyle style;

  const TextFieldInput({
    super.key,
    required this.hintText,
    required this.isPassword, required this.textEditingController,
    required this.textInputType, required this.style
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.textEditingController,
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
      keyboardType: this.textInputType,
      obscureText: this.isPassword,
    );
  }
}
