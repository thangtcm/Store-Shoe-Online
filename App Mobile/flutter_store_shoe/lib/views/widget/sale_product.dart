import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/product.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/views/widget/product_card.dart';
import 'package:get/get.dart';

class SaleSection extends StatelessWidget {
  SaleSection({
    required this.onPress,
    Key? key,
  }) : super(key: key);
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return Obx(() => productController.isLoading.value
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                productController.products.length < 5
                    ? productController.products.length
                    : 5,
                (index) => Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12),
                  child: ProductCard(
                    onPress: onPress,
                    lstProduct: productController.products,
                  ),
                ),
              ),
            ),
          ));
  }
}
