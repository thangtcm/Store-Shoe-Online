import 'package:flutter_store_shoe/models/CartItem.dart';

class Cart {
  late final List<CartItem> products;

  Cart({required this.products});

  Map<String, dynamic> toMap() {
    return {
      'products': products,
    };
  }

  Cart.fromMap(dynamic map) {
    products = map['product'];
  }

  Cart toEntity() => Cart(
        products: products,
      );
}
