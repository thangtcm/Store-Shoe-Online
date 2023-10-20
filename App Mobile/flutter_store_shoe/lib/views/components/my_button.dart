import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color customColor;
  final Color textColor;
  final String text;
  final double radius;
  final void Function()? onTap;

  const MyButton(
      {super.key,
      required this.customColor,
      required this.text,
      required this.onTap,
      required this.textColor,
      this.radius = 12});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: customColor),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
