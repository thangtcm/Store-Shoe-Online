import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/views/splash.view.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:flutter_store_shoe/views/register.dart';
// import 'package:flutter_store_shoe/views/login.dart';
// import 'package:flutter_store_shoe/views/otp-no-code.dart';
// import 'package:flutter_store_shoe/views/otp-code-false.dart';
// import 'package:flutter_store_shoe/views/otp-code-true.dart';
// import 'package:flutter_store_shoe/views/splash-screen.dart';
// import 'package:flutter_store_shoe/views/shop.dart';
// import 'package:flutter_store_shoe/views/shop-kids.dart';
// import 'package:flutter_store_shoe/views/shop-detail-product.dart';
// import 'package:flutter_store_shoe/views/favourites.dart';
// import 'package:flutter_store_shoe/views/favourites-edit.dart';
// import 'package:flutter_store_shoe/views/add-to-bag.dart';
// import 'package:flutter_store_shoe/views/add-to-bag-success.dart';
// import 'package:flutter_store_shoe/views/bag.dart';
// import 'package:flutter_store_shoe/views/bag-no-item.dart';
// import 'package:flutter_store_shoe/views/check-out-delivery.dart';
// import 'package:flutter_store_shoe/views/check-out-payment-no-show-info.dart';
import 'package:flutter_store_shoe/views/check-out-payment-show-info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Scene(),
        ),
      ),
    );
  }
}
