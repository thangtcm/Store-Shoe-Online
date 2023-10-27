// ignore_for_file: file_names

import 'package:flutter_store_shoe/models/ProductInfoVM.dart';

class CartItem {
  String? productName;
  int quantity = 0;
  int size = 0;
  ProductDetail? productDetail;
  CartItem(
      {this.quantity = 1,
      this.size = 42,
      this.productDetail,
      this.productName});

  Map<String, dynamic> toMap() {
    return {
      'productDetail': productDetail,
      'quantity': quantity,
      'size': size,
      'productName': productName
    };
  }

  CartItem.fromMap(dynamic map) {
    productDetail = map['productDetail'];
    quantity = map['quantity'] ?? 0;
    size = map['size'] ?? 42;
    productName = map['productName'];
  }

  CartItem toEntity() => CartItem(
      productDetail: productDetail,
      quantity: quantity,
      size: size,
      productName: productName);
}
