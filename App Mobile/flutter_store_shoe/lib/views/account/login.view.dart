// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/account.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/account/register.view.dart';
import 'package:flutter_store_shoe/views/components/my_button.dart';
import 'package:flutter_store_shoe/views/components/my_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginView> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AccountController controller = Get.put(AccountController());
  bool checkLoad = false;
  String? errorText;
  bool showPass = true;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  bool checkTheBox = false;
  check() {
    setState(() {
      checkTheBox = !checkTheBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Đăng nhập'),
        // ),
        body: Obx(
      () => controller.isloading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenSize.height * 0.1),
                    Image.asset(imgLogo, width: 300),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign in.",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: GoogleFonts.roboto(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (content) =>
                                          const RegisterView()));
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    MyTextField(
                        hintText: "Email or UserName",
                        controller: userNameController),
                    SizedBox(height: screenSize.height * 0.01),
                    MyTextField(
                        hintText: "Password",
                        onPressed: showPassword,
                        obsecureText: showPass,
                        icon:
                            showPass ? Icons.visibility_off : Icons.visibility,
                        controller: passwordController),
                    const SizedBox(height: 12),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      const Color(0x666F767D),
                                ),
                                child: Checkbox(
                                  checkColor: Colors.white,
                                  value: checkTheBox ? true : false,
                                  onChanged: (value) {
                                    check();
                                  },
                                ),
                              ),
                              const Text("Remember Me",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          "By continuing, I agree to Nike’s Privacy Policy",
                          style: GoogleFonts.roboto(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15),
                        ),
                        Text(
                          "and Terms of Use.",
                          style: GoogleFonts.roboto(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                        customColor: Colors.black,
                        textColor: Colors.white,
                        text: "Sign In",
                        radius: 50,
                        onTap: () async {
                          await controller.login(userNameController.text,
                              passwordController.text, context);
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
    ));
  }
}
