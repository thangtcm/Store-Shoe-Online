import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/views/product/home.view.dart';
import 'package:flutter_store_shoe/views/product/product_detail.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);
  @override
  State<MainLayout> createState() => _MainLayout();
}

class _MainLayout extends State<MainLayout> {
  int myCurrentIndex = 0;
  List pages = [
    const HomeProductView(),
    ProductDetail(),
    ProductDetail(),
    ProductDetail(),
    ProductDetail()
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
