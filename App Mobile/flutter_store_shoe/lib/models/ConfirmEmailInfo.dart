// ignore_for_file: non_constant_identifier_names, file_names

class ConfirmEmailVM {
  String? Email = '';
  int? Code = 0;

  ConfirmEmailVM({this.Email, this.Code});
  factory ConfirmEmailVM.fromJson(Map<String, dynamic> json) {
    return ConfirmEmailVM(
      Code: json['code'] ?? '',
      Email: json['email'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {"code": Code, "email": Email};
}
