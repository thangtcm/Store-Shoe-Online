// ignore_for_file: unnecessary_overrides, unused_local_variable, dead_code, avoid_print

import 'package:flutter_store_shoe/models/CategoryVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;
  var user = CategoryVM().obs;
  var categories = <CategoryVM>[].obs;
  var selectedIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getCategorys() async {
    try {
      isLoading(true);
      final response = await ApiService.GetCategories();
      if (response.statusCode == 200) {
        categories.assignAll(response.data as Iterable<CategoryVM>);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
