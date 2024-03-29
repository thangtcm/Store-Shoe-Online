// ignore_for_file: file_names

class ApiDefault {
  String? code = '';
  String? description = '';
  dynamic data;
  int? statusCode = 404;
  ApiDefault(
      {this.code, this.description, required this.data, this.statusCode});

  factory ApiDefault.fromJson(Map<String, dynamic> json) => ApiDefault(
      code: json["code"] ?? '',
      description: json["description"] ?? '',
      data: json["data"]);

  Map<String, dynamic> toJson() => {
        "code": code,
        "description": description,
        "data": data,
      };
}
