import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_shoe/views/account/confirmEmail.dart';
import 'package:flutter_store_shoe/views/account/login.view.dart';
import 'package:flutter_store_shoe/views/product/home.view.dart';
import 'package:flutter_store_shoe/views/product/product_details.dart';
import 'package:flutter_store_shoe/views/shared/_layout.dart';
import 'package:flutter_store_shoe/views/splash.view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1080, 1920),
        builder: (ctx, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: const MainLayout(),
            builder: EasyLoading.init(),
          );
        });
  }
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2500)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.white
    ..backgroundColor = Colors.black
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..userInteractions = false
    ..maskType = EasyLoadingMaskType.black
    ..dismissOnTap = true;
}
