// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter_store_shoe/models/AddressInfo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressPreference {
  static const String _keyUserModel = 'addressModel';

  Future<void> saveAddressModel(AddressInfo model) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String addModelJson = jsonEncode(model.toJson());

    await prefs.setString(_keyUserModel, addModelJson);
  }

  Future<AddressInfo?> getAddressModel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? addModelJson = prefs.getString(_keyUserModel);
    if (addModelJson != null) {
      Map<String, dynamic> addressModelMap = jsonDecode(addModelJson);

      return AddressInfo.fromJson(addressModelMap);
    }

    return null;
  }

  Future<void> clearAddressModel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUserModel);
  }
}
