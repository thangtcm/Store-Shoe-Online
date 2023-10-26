// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/views/widget/product_rate.dart';

class ProductCard extends StatelessWidget {
  List<Product> lstProduct = [];
  ProductCard(
      {Key? key,
      required this.onPress,
      this.showStars = false,
      required this.lstProduct})
      : super(key: key);

  final Random random = Random();
  final bool showStars;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 200,
        width: 141,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                lstProduct[random.nextInt(lstProduct.length)]
                    .details![0]
                    .urlImage!,
              ),
              Text(
                lstProduct[random.nextInt(lstProduct.length)].productName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 12),
              ),
              Text(
                "\$ 299.43",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
