// ignore_for_file: file_names

class ApiResponse<T> {
  String code;
  String description;
  T? data;
  int? statusCode;

  ApiResponse(
      {required this.code,
      required this.description,
      required this.data,
      required this.statusCode});

  factory ApiResponse.fromJson(Map<String, dynamic> json,
      T? Function(Map<String, dynamic>) dataModel, int? statusCode) {
    T? data;
    if (json['data'] != null) {
      data = dataModel(json['data']);
    }
    return ApiResponse<T>(
      code: json['code'],
      description: json['description'],
      data: data,
      statusCode: statusCode ?? 404,
    );
  }
}

class ApiResponseList<T> {
  String code;
  String description;
  List<T>? data;
  int? statusCode;

  ApiResponseList(
      {required this.code,
      required this.description,
      required this.data,
      required this.statusCode});

  factory ApiResponseList.fromJsonList(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) fromJson, int? statusCode) {
    final List<dynamic> dataList = json['data'];
    final List<T> items = dataList.map((item) => fromJson(item)).toList();
    return ApiResponseList(
        code: json['code'],
        description: json['description'],
        data: items,
        statusCode: statusCode);
  }
}

class ApiResponseListPage<T> {
  String? code;
  String? description;
  int? statusCode;
  List<T> data;
  int maxPage;

  ApiResponseListPage(
      {this.code,
      this.description,
      required this.data,
      required this.maxPage,
      this.statusCode});

  factory ApiResponseListPage.fromJsonList(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) fromJson, int? statusCode) {
    final List<dynamic> dataList = json['data']['data'];
    final List<T> items = dataList.map((item) => fromJson(item)).toList();
    return ApiResponseListPage(
      code: json['code'],
      description: json['description'],
      statusCode: statusCode,
      data: items,
      maxPage: json['data']['maxPage'],
    );
  }
}
