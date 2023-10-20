// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hintText = "";
  IconData? icon;
  void Function()? onPressed;
  bool obsecureText;
  TextEditingController controller;
  MyTextField(
      {super.key,
      required this.hintText,
      this.icon,
      this.onPressed,
      this.obsecureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(onTap: onPressed, child: Icon(icon)),
          hintText: hintText,
        ),
        obscureText: obsecureText,
      ),
    );
  }
}
