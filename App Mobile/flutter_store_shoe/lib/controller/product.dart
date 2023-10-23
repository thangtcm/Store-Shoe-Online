// ignore_for_file: non_constant_identifier_names

import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isloading = true.obs;
  List<Product> productList = [];

  @override
  void onInit() {
    super.onInit();
    GetProductsList(0, 1);
  }

  GetProductsList(int category, int page) async {
    try {
      isloading(true);
      final response =
          await ApiService.getProducts(category: category, page: page);
      if (response.statusCode == 200) {
        productList.assignAll(response.data as Iterable<Product>);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
