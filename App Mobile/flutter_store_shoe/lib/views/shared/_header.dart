// ignore_for_file: must_be_immutable, non_constant_identifier_names, unnecessary_brace_in_string_interps, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Header extends StatelessWidget {
  String NameHeader = "Default";
  int total = 0;
  Header(this.NameHeader, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            NameHeader,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const Spacer(),
        badges.Badge(
          showBadge: true,
          ignorePointer: false,
          badgeContent: Text(
            "${total}",
            style: const TextStyle(color: Colors.white),
          ),
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.blue,
          ),
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 25,
            color: Colors.blue,
          ),
          badgeAnimation: const badges.BadgeAnimation.scale(
            animationDuration: Duration(seconds: 1),
            colorChangeAnimationDuration: Duration(seconds: 1),
            loopAnimation: false,
            colorChangeAnimationCurve: Curves.easeOutQuart,
          ),
          onTap: () {},
        )
      ]),
    );
  }
}
