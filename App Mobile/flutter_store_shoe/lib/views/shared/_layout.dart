// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/cart.dart';
import 'package:flutter_store_shoe/controller/category.dart';
import 'package:flutter_store_shoe/controller/product.dart';
import 'package:flutter_store_shoe/views/cart/cart_view.dart';
import 'package:flutter_store_shoe/views/checkout/checkout.dart';
import 'package:flutter_store_shoe/views/product/home.view.dart';
import 'package:flutter_store_shoe/views/product/product_favorite.dart';
import 'package:flutter_store_shoe/views/profiles/settings.dart';
import 'package:get/get.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);
  @override
  State<MainLayout> createState() => _MainLayout();
}

class _MainLayout extends State<MainLayout> {
  int myCurrentIndex = 0;
  CategoryController controller = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());
  CartController cartController = Get.put(CartController());
  List pages = [
    const HomeProductView(),
    const ProductFavoriteView(),
    const CartView(),
    const CheckOutView(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[myCurrentIndex],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 25,
                offset: const Offset(8, 20))
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.redAccent,
                unselectedItemColor: Colors.black,
                currentIndex: myCurrentIndex,
                onTap: (index) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: "Favorite"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: "Notification"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "User"),
                ]),
          ),
        ));
  }
}
