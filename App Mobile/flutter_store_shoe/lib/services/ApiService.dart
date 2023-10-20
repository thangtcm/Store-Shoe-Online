// ignore_for_file: file_names, avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_store_shoe/models/ApiResponse.dart';
import 'package:flutter_store_shoe/models/UserInfoVM.dart';
import 'package:flutter_store_shoe/utils/apiurl.dart';

class ApiService {
  static final _dio = Dio();

  static Future<ApiResponse<UserInfoVM>> login(
      String userName, String password) async {
    final requestData = {
      'UserName': userName,
      'Password': password,
    };
    try {
      final response = await _dio.post(
        apiLogin,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        }),
        data: jsonEncode(requestData),
      );
      if (response.statusCode == 200) {
        final responseData = ApiResponse.fromJson(response.data,
            (json) => UserInfoVM.fromJson(json), response.statusCode);
        return responseData;
      } else {
        final errorResponse = ApiResponse.fromJson(response.data,
            (json) => UserInfoVM.fromJson(json), response.statusCode);
        return errorResponse;
      }
    } catch (error) {
      return ApiResponse<UserInfoVM>(
        code: 'Error',
        description: 'Lỗi không xác định',
        data: UserInfoVM(),
        statusCode: 404,
      );
    }
  }
}
