// ignore_for_file: unnecessary_overrides, unused_local_variable, dead_code, avoid_print, non_constant_identifier_names

import 'package:flutter_store_shoe/models/CategoryVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;
  var user = CategoryVM().obs;
  RxInt SelectIndex = 0.obs;
  List<CategoryVM> categories = <CategoryVM>[].obs;
  var selectedIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    SelectIndex = 0.obs;
    getCategorys();
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
        final newCategory =
            CategoryVM(Id: 0, categoryName: 'All', categoryDescription: '');
        categories.assignAll(response.data!);
        categories.insert(0, newCategory);
      }
    } catch (e) {
      print('Lỗi : ${e.toString()}');
    } finally {
      isLoading(false);
    }
  }
}
