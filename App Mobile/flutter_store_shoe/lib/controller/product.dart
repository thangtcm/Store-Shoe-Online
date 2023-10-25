// ignore_for_file: non_constant_identifier_names, unnecessary_overrides

import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  List<Product> products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProducts(0, 1);
  }

  void getProducts(int category, int page) async {
    try {
      isLoading(true);
      final response =
          await ApiService.getProducts(category: category, page: page);
      if (response.statusCode == 200) {
        products.assignAll(response.data.data);
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
