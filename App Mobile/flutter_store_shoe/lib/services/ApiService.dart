// ignore_for_file: file_names, avoid_print, unused_local_variable, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_store_shoe/models/ApiResponse.dart';
import 'package:flutter_store_shoe/models/CategoryVM.dart';
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
        ApiResponse<UserInfoVM> responseData = ApiResponse.fromJson(
            response.data,
            (json) => UserInfoVM.fromJson(json),
            response.statusCode);
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

  static Future<ApiResponseList<CategoryVM>> GetCategories() async {
    try {
      final response = await _dio.get(
        apiGetCategorys,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        }),
      );
      print(response.data);
      final responseData = ApiResponseList.fromJsonList(response.data,
          (json) => CategoryVM.fromJson(json), response.statusCode);
      print("Dữ liệu là: ${responseData.code}");
      return responseData;
    } catch (error) {
      return ApiResponseList<CategoryVM>(
        code: 'Error',
        description: 'Lỗi không xác định $error',
        data: null,
        statusCode: 404,
      );
    }
  }
}
