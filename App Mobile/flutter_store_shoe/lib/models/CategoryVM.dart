// ignore_for_file: file_names

class CategoryVM {
  // ignore: non_constant_identifier_names
  int? Id = 0;
  String? categoryName;
  String? categoryDescription;

  // ignore: non_constant_identifier_names
  CategoryVM({this.Id, this.categoryName, this.categoryDescription});

  factory CategoryVM.fromJson(Map<String, dynamic> json) {
    return CategoryVM(
        Id: json['id'] ?? 0,
        categoryName: json['categoryName'] ?? '',
        categoryDescription: json['categoryDescription'] ?? '');
  }

  Map<String, dynamic> toJson() => {
        "id": Id,
        "categoryName": categoryName,
        "categoryDescription": categoryDescription,
      };
}
