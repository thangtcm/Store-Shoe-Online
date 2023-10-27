import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    Key? key,
    this.bottomPadding = 8,
    this.topPadding = 8,
    this.starSize = 12,
    this.endPadding = 2,
  }) : super(key: key);
  final double starSize;
  final double bottomPadding;
  final double endPadding;
  final double topPadding;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Padding(
          padding: EdgeInsetsDirectional.only(
            end: endPadding,
            top: topPadding,
            bottom: bottomPadding,
          ),
          child: const Icon(
            Icons.star_rate_rounded,
            size: 16,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
