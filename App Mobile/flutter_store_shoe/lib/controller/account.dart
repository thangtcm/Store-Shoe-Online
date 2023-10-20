// ignore_for_file: use_build_context_synchronously, unnecessary_overrides

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/models/UserInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:flutter_store_shoe/views/product/home.view.dart';
import 'package:flutter_store_shoe/views/shared/_layout.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  var isloading = true.obs;
  var user = UserInfoVM().obs;

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

  void getUsers() async {}

  Future<void> login(
      String userName, String password, BuildContext context) async {
    try {
      isloading(true);
      var response = await ApiService.login(userName, password);
      if (response.statusCode == 200) {
        await response.data?.saveToPrefs();
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MainLayout(),
          ),
        );
      } else {
        // Navigator.pop(context);
        // Xử lý lỗi ở đây
        AwesomeDialog(
          context: context,
          animType: AnimType.scale,
          dialogType: DialogType.error,
          body: Center(
            child: Text(
              'Lỗi : ${response.description}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          title: 'Đăng nhập không thành công',
          desc: 'This is also Ignored',
          btnOkOnPress: () {},
        ).show();
      }
    } finally {
      isloading(false);
    }
  }
// }
}
