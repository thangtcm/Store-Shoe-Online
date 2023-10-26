import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => const Padding(
          padding: EdgeInsetsDirectional.only(
            end: 10,
            top: 10,
            bottom: 10,
          ),
          child: Icon(
            Icons.star_rate_rounded,
            size: 10,
          ),
        ),
      ),
    );
  }
}
