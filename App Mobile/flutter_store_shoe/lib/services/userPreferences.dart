// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter_store_shoe/models/UserInfoVM.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static const String _keyUserModel = 'userModel';

  Future<void> saveUserModel(UserInfoVM userModel) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userModelJson = jsonEncode(userModel.toJson());

    await prefs.setString(_keyUserModel, userModelJson);
  }

  Future<UserInfoVM?> getUserModel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userModelJson = prefs.getString(_keyUserModel);
    if (userModelJson != null) {
      Map<String, dynamic> userModelMap = jsonDecode(userModelJson);

      return UserInfoVM.fromJson(userModelMap);
    }

    return null;
  }

  Future<void> clearUserModel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUserModel);
  }
}
