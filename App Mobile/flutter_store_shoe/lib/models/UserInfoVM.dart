// ignore_for_file: file_names

import 'package:shared_preferences/shared_preferences.dart';

class UserInfoVM {
  String? userId = "";
  String? userName;
  String? email;
  String? numberPhone;
  String? fullName;
  String? password;
  String? passwordOld;

  UserInfoVM({
    this.userId,
    this.userName,
    this.email,
    this.numberPhone,
    this.fullName,
    this.password,
    this.passwordOld,
  });

  factory UserInfoVM.fromJson(Map<String, dynamic> json) {
    return UserInfoVM(
      userId: json['userId'] ?? '',
      userName: json['userName'] ?? '',
      email: json['email'] ?? '',
      numberPhone: json['numberPhone'] ?? '',
      fullName: json['fullName'] ?? '',
      password: json['password'] ?? '',
      passwordOld: json['passwordOld'] ?? '',
    );
  }

  Future<void> saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId ?? '');
    await prefs.setString('userName', userName ?? '');
    await prefs.setString('email', email ?? '');
    await prefs.setString('numberPhone', numberPhone ?? '');
    await prefs.setString('fullName', fullName ?? '');
    await prefs.setString('password', password ?? '');
    await prefs.setString('passwordOld', passwordOld ?? '');
  }

  // Tạo một đối tượng UserInfoVM từ SharedPreferences
  factory UserInfoVM.fromPrefs(SharedPreferences prefs) {
    return UserInfoVM(
      userId: prefs.getString('userId'),
      userName: prefs.getString('userName'),
      email: prefs.getString('email'),
      numberPhone: prefs.getString('numberPhone'),
      fullName: prefs.getString('fullName'),
      password: prefs.getString('password'),
      passwordOld: prefs.getString('passwordOld'),
    );
  }
}
