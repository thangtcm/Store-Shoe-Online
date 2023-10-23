// ignore_for_file: must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/shared/_header.dart';
import 'package:flutter_store_shoe/views/widget/categories.dart';
import 'package:flutter_store_shoe/views/widget/items.dart';

class HomeProductView extends StatelessWidget {
  HomeProductView({Key? key}) : super(key: key);

  String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header("Home"),
          Container(
            padding: const EdgeInsets.only(top: 5),
            child: Image.network(
              'https://thangepedoan-001-site1.ftempurl.com/Image/075f84905c88bfebaa42b036dc8ae708.gif',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Nike Air Max 270',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'YOUR SUPPORT SYSTEM',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Legendary Air gets lifted. The lightweight and airy upper and super-low-cut collar make it the perfect go-to for warm-weather fun.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      height: 1.4),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Inter'),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: const CategoriesWidget(),
          ),
          // ProductCard()
        ],
      ),
    );
  }
}
