// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/utils/images.dart';
import 'package:flutter_store_shoe/utils/sizes.dart';

class ItemsWidger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.8,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          // ScreenSize.height(context: context) * 0.1
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            color: const Color(0xFFF6F6F6),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    imgItemDeafult,
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
