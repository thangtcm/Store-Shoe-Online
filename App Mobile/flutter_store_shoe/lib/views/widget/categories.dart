// ignore_for_file: non_constant_identifier_names, must_be_immutable, unused_local_variable, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/category.dart';
import 'package:flutter_store_shoe/controller/product.dart';
import 'package:flutter_store_shoe/models/CategoryVM.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int? SelectIndex;

  @override
  Widget build(BuildContext context) {
    CategoryController controller = Get.put(CategoryController());
    ProductController productcontroller = Get.put(ProductController());
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (CategoryVM category in controller.categories)
            GestureDetector(
              onTap: () {
                setState(() {
                  controller.SelectIndex.value = category.Id!;
                  productcontroller.getProducts(category.Id!, 1);
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                decoration: BoxDecoration(
                    color: controller.SelectIndex.value == category.Id!
                        ? const Color(0xFF1A1D1F)
                        : const Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      category.categoryName!,
                      style: TextStyle(
                        color: controller.SelectIndex.value == category.Id!
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
        ]));
  }
}
