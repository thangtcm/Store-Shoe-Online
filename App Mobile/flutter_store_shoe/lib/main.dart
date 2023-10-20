import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/views/account/login.view.dart';
import 'package:flutter_store_shoe/views/product/home.view.dart';
import 'package:flutter_store_shoe/views/shared/_layout.dart';
import 'package:flutter_store_shoe/views/splash.view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLayout(),
    );
  }
}
