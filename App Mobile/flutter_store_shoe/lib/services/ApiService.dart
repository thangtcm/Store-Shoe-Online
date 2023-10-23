// ignore_for_file: file_names, avoid_print, unused_local_variable, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_store_shoe/models/ApiDefault.dart';
import 'package:flutter_store_shoe/models/ApiResponse.dart';
import 'package:flutter_store_shoe/models/CategoryVM.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
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

  static Future<ApiResponse<Object>> SendEmail(UserInfoVM user) async {
    try {
      print('Test ${user.toJson}');
      final response = await _dio.post(
        apiSendMail,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        }),
        data: jsonEncode(user.toJson),
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
      return ApiResponse<ApiDefault>(
        code: 'Error',
        description: 'Lỗi không xác định',
        data: null,
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
      final responseData = ApiResponseList.fromJsonList(response.data,
          (json) => CategoryVM.fromJson(json), response.statusCode);
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

  static Future<ApiResponseListPage<Product>> getProducts(
      {int category = 0, int page = 1}) async {
    try {
      final response = await _dio.get(
        '$apiGetProducts?categoryId=$category&page=$page',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        }),
      );
      if (response.statusCode == 200) {
        final apiResponse = ApiResponseListPage.fromJson(response.data,
            (json) => Product.fromJson(json), response.statusCode);
        return apiResponse;
      } else {
        final errorResponse = ApiResponseListPage.fromJson(response.data,
            (json) => Product.fromJson(json), response.statusCode);
        return errorResponse;
      }
    } catch (error) {
      return ApiResponseListPage<Product>(
          code: 'Error',
          description: 'Lỗi không xác định',
          data: ApiResponseData<Product>(data: [], maxPage: 0),
          statusCode: 404);
    }
  }
}
