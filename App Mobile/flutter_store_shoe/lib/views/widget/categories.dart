// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/category.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int? SelectIndex;
  Map<int, String> categorilst = {
    1: "All",
    3: "Men",
    9: "Women",
    4: "Kids",
    5: "Jordan"
  };
  @override
  void initState() {
    super.initState();
    SelectIndex = categorilst.keys.first;
  }

  @override
  Widget build(BuildContext context) {
    CategoryController controller = Get.put(CategoryController());
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            //    for(var a in categorilst)
            ...categorilst.entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectIndex = e.key;
                        controller.getCategorys();
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 20),
                      decoration: BoxDecoration(
                          color: SelectIndex == e.key
                              ? const Color(0xFF1A1D1F)
                              : const Color(0xFFEFEFEF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            e.value,
                            style: TextStyle(
                              color: SelectIndex == e.key
                                  ? const Color(0xFFFCFCFC)
                                  : Colors.black,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList()
          ],
        ));
  }
}
