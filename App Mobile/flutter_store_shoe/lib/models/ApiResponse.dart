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
