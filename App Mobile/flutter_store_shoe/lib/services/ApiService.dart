// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:flutter_store_shoe/models/UserInfoVM.dart';

class ApiService {
  final Dio dio = Dio();

  Future<UserInfoVM> login(String userName, String password) async {
    print('run');
    final response = await dio.post(
        'http://thangepedoan-001-site1.ftempurl.com/api/Account/Login',
        data: {
          "UserName": userName,
          "Password": password,
        });
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = response.data;
      // ignore: avoid_print
      print(data);
      return UserInfoVM.fromJson(data['data']);
    } else {
      final data = response.data;
      // ignore: avoid_print
      print(data);
      throw Exception('Lỗi: ${data['description']}');
    }
  }
}
