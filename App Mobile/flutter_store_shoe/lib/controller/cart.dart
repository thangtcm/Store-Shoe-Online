// ignore_for_file: unnecessary_overrides

import 'package:flutter_store_shoe/models/CartItem.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartItem> cartItems = <CartItem>[].obs;
  RxInt get totalCart => cartItems.length.obs;
  bool get isEmptyCart => cartItems.isEmpty || getTotalQuantity() == 0;

  @override
  void onInit() {
    super.onInit();
    cartItems = <CartItem>[].obs;
  }

  void addToCart(
    ProductDetail product,
    int quantity,
    int size,
    String productName,
  ) {
    // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
    final existingCartItemIndex = cartItems.indexWhere(
      (item) => item.productDetail?.id == product.id,
    );

    if (existingCartItemIndex != -1) {
      cartItems[existingCartItemIndex].quantity += quantity;
    } else {
      final model = CartItem(
        quantity: quantity,
        size: size,
        productDetail: product,
        productName: productName,
      );
      cartItems.add(model);
    }
    update();
  }

  void removeFromCart(CartItem item) {
    cartItems.remove(item);
  }

  double getTotalPrice() {
    return cartItems.fold(
        0.0,
        (total, item) =>
            total + (item.productDetail?.price ?? 0) * item.quantity);
  }

  int getTotalQuantity() {
    return cartItems.fold(0, (total, item) => total + item.quantity);
  }

  void decreaseItemQuantity(CartItem item) {
    item.quantity--;
    if (item.quantity <= 0) cartItems.remove(item);
    update();
  }

  RxInt getQuantity(CartItem item) {
    return item.quantity.obs;
  }

  void increaseItemQuantity(CartItem item) {
    item.quantity++;
    update();
  }

  getCartItems() {
    cartItems.removeWhere((item) => item.quantity <= 0);
  }
}
