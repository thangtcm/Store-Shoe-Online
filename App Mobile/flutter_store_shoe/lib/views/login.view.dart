// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/login.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  final LoginController controller;

  const LoginView({Key? key, required this.controller}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginView> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? errorText;

  void _login() async {
    final userName = userNameController.text;
    final password = passwordController.text;
    // ignore: avoid_print
    print("$userName $password");
    final user = await widget.controller.login(userName, password);

    if (user != null) {
      // Đăng nhập thành công, thực hiện hành động sau khi đăng nhập
      // Chuyển sang màn hình mới hoặc hiển thị thông báo thành công
      setState(() {
        errorText = 'Đăng nhập thành công.';
      });
    } else {
      setState(() {
        errorText = 'Đăng nhập không thành công.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 150.0),
            child: Column(
              children: [
                Image.asset(
                  imgLogo,
                  width: 300,
                ),
                Column(
                  children: [
                    Text(
                      'Sigin in.',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: GoogleFonts.roboto(
                            color: Colors.black.withOpacity(0.6), fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: userNameController,
                        decoration:
                            const InputDecoration(labelText: 'Tên đăng nhập'),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration:
                            const InputDecoration(labelText: 'Mật khẩu'),
                        obscureText: true,
                      ),
                      ElevatedButton(
                        onPressed: _login,
                        child: Text('Sign in',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold)),
                      ),
                      if (errorText != null)
                        Text(
                          errorText!,
                          style: const TextStyle(color: Colors.red),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
