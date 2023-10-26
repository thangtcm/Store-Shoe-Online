import 'package:flutter_store_shoe/models/ProductInfoVM.dart';

class CartItem {
  int? quantity;
  int? size;
  ProductDetail? productDetail;
  CartItem({this.quantity, this.size, this.productDetail});

  Map<String, dynamic> toJson() =>
      {"quantity": quantity, "size": size, "productDetail": productDetail};
}
