// ignore_for_file: use_build_context_synchronously, unnecessary_overrides, non_constant_identifier_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/models/UserInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:flutter_store_shoe/views/shared/_layout.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  var isloading = true.obs;
  var user = UserInfoVM().obs;

  @override
  void onInit() {
    super.onInit();
    isloading(false);
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

  Future SendMail(
      String fullName,
      String email,
      String numberPhone,
      String userName,
      String password,
      String confirmPassword,
      BuildContext context) async {
    try {
      isloading(true);
      if (password != confirmPassword) {
        isloading(false);
        AwesomeDialog(
          context: context,
          animType: AnimType.scale,
          dialogType: DialogType.error,
          body: const Center(
            child: Text(
              'Lỗi : Mật khẩu không khớp nhau',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          title: 'Đăng ký thất bại',
          desc: 'This is also Ignored',
          btnOkOnPress: () {},
        ).show();
        return;
      } else {
        UserInfoVM user = UserInfoVM(
            email: email,
            fullName: fullName,
            numberPhone: numberPhone,
            password: password,
            userName: userName);
        var response = await ApiService.SendEmail(user);
        if (response.statusCode == 200) {
        } else {
          AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(
              child: Text(
                'Lỗi : ${response.description}',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            title: 'Đăng ký không thành công',
            desc: 'This is also Ignored',
            btnOkOnPress: () {},
          ).show();
        }
      }
    } finally {
      isloading(false);
    }
  }

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
