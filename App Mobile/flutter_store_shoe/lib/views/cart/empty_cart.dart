import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/utils/const.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(child: Image.asset(imgemptycart)),
        ),
        const Text(
          "Empty cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}
