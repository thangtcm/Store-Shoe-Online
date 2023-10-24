// ignore_for_file: use_build_context_synchronously, unnecessary_overrides, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/enum/typeNotify.dart';
import 'package:flutter_store_shoe/models/UserInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';
import 'package:flutter_store_shoe/services/showNotifiDialog.dart';
import 'package:flutter_store_shoe/services/userPreferences.dart';
import 'package:flutter_store_shoe/views/account/confirmEmail.dart';
import 'package:flutter_store_shoe/views/account/login.view.dart';
import 'package:flutter_store_shoe/views/account/register.view.dart';
import 'package:flutter_store_shoe/views/shared/_layout.dart';
import 'package:get/get.dart';

import '../models/ConfirmEmailInfo.dart';

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
        await ShowDialogNotify.showNotify(
            "Đăng ký thất bại", 'Mật khẩu không khớp nhau', context);
        return;
      } else {
        UserInfoVM user = UserInfoVM(
            email: email,
            fullName: fullName,
            numberPhone: numberPhone,
            password: password,
            userName: userName);
        var response = await ApiService.sendEmail(user);
        if (response.statusCode == 200) {
          var getUser = await UserPreferences().getUserModel();
          if (getUser != null) {
            await UserPreferences().clearUserModel();
          }
          await UserPreferences().saveUserModel(user);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ConfirmEmailView()));
        } else {
          await ShowDialogNotify.showNotify(
              "Đăng ký không thành công", response.description, context);
        }
      }
    } finally {
      isloading(false);
    }
  }

  Future ConfirmEmail(int TextCode, BuildContext context) async {
    try {
      isloading(true);
      var user = await UserPreferences().getUserModel();
      if (user == null) {
        await ShowDialogNotify.showNotify(
            "Lỗi từ máy chủ",
            "Đã có lỗi xảy ra trong quá trình xác thực, vui lòng đăng ký lại.",
            context);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const RegisterView(),
          ),
        );
        return;
      }
      ConfirmEmailVM model = ConfirmEmailVM();
      model.Email = user.email;
      model.Code = TextCode;

      var reponse = await ApiService.confirmEmail(model);
      if (reponse.statusCode == 200) {
        print("Chay");
        reponse = await ApiService.register(user);

        if (reponse.statusCode == 200) {
          await ShowDialogNotify.showNotify(
              "Xác thực thành công",
              'Tài khoản bạn đã được xác thực, và hệ thống đã tạo xong tài khoản của bạn.',
              context,
              typenotify: typeNotify.Success);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const LoginView(),
            ),
          );
        } else {
          await ShowDialogNotify.showNotify(
              "Xác thực thất bại", reponse.description, context);
        }
      } else {
        await ShowDialogNotify.showNotify(
            "Xác thực thất bại", reponse.description, context);
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
        ShowDialogNotify.showNotify(
            "Đăng nhập không thành công", response.description, context);
      }
    } finally {
      isloading(false);
    }
  }
// }
}
