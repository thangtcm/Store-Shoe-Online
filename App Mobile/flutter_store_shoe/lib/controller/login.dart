import 'package:flutter_store_shoe/models/UserInfoVM.dart';
import 'package:flutter_store_shoe/services/ApiService.dart';

class LoginController {
  final ApiService apiService;

  LoginController(this.apiService);

  Future<UserInfoVM?> login(String userName, String password) async {
    try {
      final user = await apiService.login(userName, password);
      return user;
    } catch (e) {
      // Xử lý lỗi, hiển thị thông báo cho người dùng nếu cần
      return null;
    }
  }
}
