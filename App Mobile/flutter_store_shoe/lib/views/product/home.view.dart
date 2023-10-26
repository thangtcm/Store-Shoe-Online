// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_shoe/controller/category.dart';
import 'package:flutter_store_shoe/controller/product.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/components/sliver_grid_delegate_with_fixed_cross_axis_count_and_fixed_height.dart';
import 'package:flutter_store_shoe/views/shared/_header.dart';
import 'package:flutter_store_shoe/views/widget/categories.dart';
import 'package:flutter_store_shoe/views/widget/items.dart';
import 'package:get/get.dart';

class HomeProductView extends StatefulWidget {
  const HomeProductView({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeProductView> {
  String title = "Home";
  CategoryController controller = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  Header(title),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: CachedNetworkImage(
                      imageUrl: HomeGif,
                      width: double.infinity,
                      fit: BoxFit.contain,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
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
                  const SizedBox(height: 30),
                  Obx(
                    () => productController.isLoading.value
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
                              itemCount: productController.products.length,
                              itemBuilder: (context, index) {
                                final data = productController.products[index];
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
