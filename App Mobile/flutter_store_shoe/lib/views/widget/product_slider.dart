// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/views/utils/size_utils.dart';

class ActiveDot extends StatelessWidget {
  const ActiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  const InactiveDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

/*
 * for slider home page
 */
class ProductSlider extends StatefulWidget {
  final List<ProductDetail>? items;
  int? activeIndex;
  final CarouselController? controller;
  ProductSlider({super.key, this.items, this.activeIndex, this.controller});

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  void setActiveDot(int index, CarouselPageChangedReason reason) {
    setState(() {
      widget.activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              carouselController: widget.controller,
              options: CarouselOptions(
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  setActiveDot(index, reason);
                },
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                viewportFraction: 1.0,
                autoPlay: true,
              ),
              items: widget.items?.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            item.urlImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.items!.length, (idx) {
                return widget.activeIndex == idx
                    ? const ActiveDot()
                    : const InactiveDot();
              }))
        ],
      ),
    );
  }
}
