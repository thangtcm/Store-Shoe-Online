// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/cart.dart';
import 'package:flutter_store_shoe/models/AddressInfo.dart';
import 'package:flutter_store_shoe/models/CartItem.dart';
import 'package:flutter_store_shoe/services/addressPreferences.dart';
import 'package:flutter_store_shoe/services/showNotifiDialog.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/components/my_button.dart';
import 'package:flutter_store_shoe/views/components/my_text_field.dart';
import 'package:get/get.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutView> {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController numberPhone = TextEditingController();
  bool checkTheBox = false;
  bool isDropdownOpen = false;
  CartController controller = Get.find<CartController>();
  void saveInfo() {
    AddressInfo model = AddressInfo(
        fullName: fullName.text,
        address: address.text,
        email: email.text,
        numberPhone: numberPhone.text);
    AddressPreference().saveAddressModel(model);
  }

  bool checkFieldNull() {
    return (fullName.text.isEmptyOrNull ||
        address.text.isEmptyOrNull ||
        email.text.isEmptyOrNull ||
        numberPhone.text.isEmptyOrNull);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Checkout",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Summary",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDropdownOpen = !isDropdownOpen;
                          });
                        },
                        child: Row(
                          children: [
                            Text(
                              "\$${controller.getTotalPrice()} (${controller.cartItems.length} items)",
                              style: const TextStyle(fontSize: 16),
                            ),
                            Icon(
                              isDropdownOpen
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (isDropdownOpen)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.fastOutSlowIn,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.cartItems.length,
                        itemBuilder: (context, index) {
                          CartItem cartItem = controller.cartItems[index];
                          return Card(
                            child: ListTile(
                              leading: Image.network(
                                cartItem.productDetail!.urlImage!,
                                width: 100,
                                height: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              title: Text(
                                cartItem.productName ?? '',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Men's shoes${controller.getQuantity(cartItem)}",
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "Size :${controller.cartItems[index].size}",
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'Quantity: ${controller.getQuantity(cartItem)}',
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  Text(
                                    'Price: \$${cartItem.productDetail?.price ?? 0}',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Delivery',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'How would you like to get your order?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Enter your name and address:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                          widthSize: 0,
                          hintText: "Your Name",
                          controller: fullName,
                          icon: Icons.person),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                          widthSize: 0,
                          hintText: "Your Address",
                          controller: address,
                          icon: Icons.home),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'What’s your contact information?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                          widthSize: 0,
                          hintText: "Your Email",
                          controller: email,
                          icon: Icons.email),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                          widthSize: 0,
                          hintText: "Your Phone",
                          controller: numberPhone,
                          icon: Icons.phone),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: checkTheBox ? true : false,
                            onChanged: (value) {
                              setState(() {
                                checkTheBox = !checkTheBox;
                              });
                            },
                          ),
                          const Expanded(
                            child: Text(
                              "I have read and consent to eShopWorld processing my information in accordance with the Privacy Statement and Cookie Policy. eShopWorld is a trusted Nike partner.",
                              style: TextStyle(color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 8,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyButton(
                          customColor: Colors.black,
                          textColor: Colors.white,
                          text: "Continue",
                          radius: 50,
                          onTap: () async {
                            if (!checkTheBox) {
                              return await ShowDialogNotify.showNotify(
                                  "Bạn cần chấp nhận điều lệ",
                                  "Vui lòng click chấp nhận điều lệ của cửa hàng.",
                                  context);
                            }
                            if (checkFieldNull()) {
                              return await ShowDialogNotify.showNotify(
                                  "Giá trị rỗng",
                                  "Bạn cần điền đầy đủ thông tin.",
                                  context);
                            }
                            saveInfo();
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
