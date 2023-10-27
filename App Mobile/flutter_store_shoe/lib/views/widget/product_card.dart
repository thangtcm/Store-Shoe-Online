// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';

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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
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
                "\$ ${lstProduct[random.nextInt(lstProduct.length)].details![0].price}",
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
