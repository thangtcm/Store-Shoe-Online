// ignore_for_file: unused_local_variable, dead_code, library_private_types_in_public_api

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_shoe/controller/cart.dart';
import 'package:flutter_store_shoe/controller/product.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/views/product/product_details.dart';
import 'package:flutter_store_shoe/services/ColorHelper.dart';
import 'package:get/get.dart';

class ItemProduct extends StatefulWidget {
  final int index;
  final Product data;

  const ItemProduct({super.key, required this.index, required this.data});
  @override
  _ItemProductWidgetState createState() => _ItemProductWidgetState();
}

class _ItemProductWidgetState extends State<ItemProduct> {
  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find<CartController>();
    ProductController productController = Get.find<ProductController>();
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: ExtendedImage.network(
                    widget.data.details?[0].urlImage ?? "",
                    cache: true,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 5.w,
                  top: 10.w,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() async {
                        if (await productController
                            .updateFavorite(widget.data.id)) {
                          widget.data.isFav = !widget.data.isFav;
                        }
                      });
                    },
                    minWidth: 0,
                    padding: const EdgeInsets.all(0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: const CircleBorder(),
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.w, // Đặt kích thước theo nhu cầu của bạn
                      height: 60.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Màu nền của hình tròn
                      ),
                      child: Center(
                        child: Icon(
                          widget.data.isFav
                              ? Icons.favorite
                              : Icons.favorite_outline_rounded,
                          size: 45.w,
                          color:
                              widget.data.isFav ? Colors.red : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.w),
            child: TextButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailView(
                            product: widget.data,
                          ),
                        ),
                      )
                    },
                child: Text(widget.data.productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold))),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 40.w, top: 10.w, bottom: 10.w),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star_rate_rounded,
                              color: Colors.orange, size: 45.w),
                          SizedBox(width: 5.w),
                          Text("${widget.data.rating}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w500)),
                          Text("(${3.3})",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text("\$${widget.data.details?[0].price}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 48.sp,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailView(
                        product: widget.data,
                      ),
                    ),
                  );
                },
                elevation: 0,
                minWidth: 0,
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Icon(Icons.fullscreen, size: 60.w, color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 40.w, top: 10.w),
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                for (var item in widget.data.details!)
                                  Container(
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: OvalBorder(
                                        side: BorderSide(
                                            width: 8,
                                            color: item.codeColor?.toColor()),
                                      ),
                                    ),
                                  )
                              ],
                            )
                          ])))
            ],
          )
        ],
      ),
    );
  }
}
