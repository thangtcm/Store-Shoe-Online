// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_shoe/controller/category.dart';
import 'package:flutter_store_shoe/controller/product.dart';
import 'package:flutter_store_shoe/views/components/sliver_grid_delegate_with_fixed_cross_axis_count_and_fixed_height.dart';
import 'package:flutter_store_shoe/views/shared/_header.dart';
import 'package:flutter_store_shoe/views/widget/categories.dart';
import 'package:flutter_store_shoe/views/widget/items.dart';
import 'package:get/get.dart';

class ProductFavoriteView extends StatefulWidget {
  const ProductFavoriteView({Key? key}) : super(key: key);

  @override
  _ProductFavoriteState createState() => _ProductFavoriteState();
}

class _ProductFavoriteState extends State<ProductFavoriteView> {
  String title = "Product Favorite";
  // CategoryController controller = Get.put(CategoryController());
  // ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Get.find<CategoryController>().isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Header(title),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    child: const CategoriesWidget(),
                  ),
                  const SizedBox(height: 30),
                  Obx(
                    () => Get.find<ProductController>().isLoading.value
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(
                            child: GridView.builder(
                              shrinkWrap: true,
                              primary: false,
                              padding: EdgeInsets.only(
                                  top: 20.w,
                                  bottom: 10.h,
                                  left: 60.w,
                                  right: 60.w),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                                crossAxisCount: 2,
                                crossAxisSpacing: 40.w,
                                mainAxisSpacing: 100.w,
                                height: MediaQuery.of(context).size.width * 0.7,
                              ),
                              itemCount:
                                  Get.find<ProductController>().products.length,
                              itemBuilder: (context, index) {
                                final data = Get.find<ProductController>()
                                    .products[index];
                                return ItemProduct(index: index, data: data);
                              },
                            ),
                          ),
                  )
                ],
              ),
      ),
    );
  }
}
