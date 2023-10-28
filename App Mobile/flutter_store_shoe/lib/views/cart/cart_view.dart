// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_shoe/controller/cart.dart';
import 'package:flutter_store_shoe/models/CartItem.dart';
import 'package:flutter_store_shoe/views/cart/empty_cart.dart';
import 'package:flutter_store_shoe/views/checkout/checkout.dart';
import 'package:flutter_store_shoe/views/shared/_header.dart';
import 'package:get/get.dart';

final CartController controller = Get.find<CartController>();

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);
  @override
  _CartListWidgetState createState() => _CartListWidgetState();
}

class _CartListWidgetState extends State<CartView> {
  Widget cartList() {
    return ListView.builder(
      itemCount: controller.cartItems.length,
      itemBuilder: (context, index) {
        CartItem cartItem = controller.cartItems[index];
        return Card(
          child: ListTile(
            leading: Image.network(
              cartItem.productDetail!.urlImage!,
              width: 100,
              height: 100,
              fit: BoxFit.fitWidth,
            ),
            title: Text(
              cartItem.productName ?? '',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 45.sp,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: const Icon(Icons.remove_circle,
                            color: Colors.black),
                        onPressed: () => setState(() {
                              controller.decreaseItemQuantity(cartItem);
                            })),
                    Text(
                      '${controller.getQuantity(cartItem)}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    IconButton(
                        icon: const Icon(Icons.add_circle, color: Colors.black),
                        onPressed: () => setState(() {
                              controller.increaseItemQuantity(cartItem);
                            })),
                  ],
                ),
                Text(
                  'Price: \$${cartItem.productDetail?.price ?? 0}',
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget bottomBarTitle() {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Total",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Text(
              "\$${controller.getTotalPrice()}",
              key: ValueKey<double>(controller.getTotalPrice()),
              style: TextStyle(
                fontSize: 70.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomBarButton() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
          onPressed: controller.isEmptyCart
              ? null
              : () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckOutView(),
                    ),
                  );
                },
          child: const Text("Check Out"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 80.w),
        Header("Giỏ hàng", isBack: true),
        Expanded(
          child: !controller.isEmptyCart
              ? Obx(() {
                  return cartList();
                })
              : const EmptyCart(),
        ),
        bottomBarTitle(),
        bottomBarButton(),
      ],
    ));
  }
}
