import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/account/login.view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const LoginView()); // Truyền controller vào LoginView
    });
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset(imgsplash),
        ));
  }
}
