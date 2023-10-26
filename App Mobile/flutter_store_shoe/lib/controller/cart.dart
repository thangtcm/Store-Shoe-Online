import 'package:flutter_store_shoe/models/CartItem.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItem = CartItem().obs;
  @override
  void onInit() {
    super.onInit();
  }
}
