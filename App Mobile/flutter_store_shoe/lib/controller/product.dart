// ignore_for_file: non_constant_identifier_names, unnecessary_overrides

import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:flutter_store_shoe/services/userPreferences.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  List<Product> products = <Product>[].obs;
  List<Product> productFavorites = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProducts(0, 1);
    getProductFavorites();
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

  void getProductFavorites() async {
    try {
      isLoading(true);
      var user = await UserPreferences().getUserModel();
      if (user == null || user.userId == null) return;
      final response = await ApiService.getProductFavorites(user.userId!);
      if (response.statusCode == 200) {
        productFavorites.assignAll(response.data.data);
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }

  void updateFavorite(int productId) async {
    try {
      var user = await UserPreferences().getUserModel();
      if (user == null || user.userId == null) return;
      var result = await ApiService.updateFavorite(productId, user.userId!);
      print("AAAA : ${result.statusCode}");
      var product = products.indexWhere((element) => element.id == productId);
      if (product != -1) products[product].isFav = !products[product].isFav;
      update();
    } catch (e) {
      print("Lỗi ${e.toString()}");
    } finally {}
  }
}
