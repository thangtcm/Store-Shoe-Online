// ignore_for_file: file_names

class UserInfoVM {
  final String userId;
  final String userName;
  final String email;
  final String numberPhone;
  final String fullName;
  final String password;
  final String passwordOld;

  UserInfoVM({
    required this.userId,
    required this.userName,
    required this.email,
    required this.numberPhone,
    required this.fullName,
    required this.password,
    required this.passwordOld,
  });

  factory UserInfoVM.fromJson(Map<String, dynamic> json) {
    return UserInfoVM(
      userId: json['userId'] ?? '',
      userName: json['userName'] ?? '',
      email: json['email'] ?? '',
      numberPhone: json['numberPhone'] ?? '',
      fullName: json['fullName'] ?? '',
      password: json['password'] ?? '',
      passwordOld: json['passwordOld'] ?? '',
    );
  }
}
