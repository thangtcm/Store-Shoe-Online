import 'package:flutter/material.dart';

const tFormHeight = 30;

class ScreenSize {
  static double height({required BuildContext context}) {
    return MediaQuery.sizeOf(context).height;
  }
}
