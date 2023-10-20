// ignore_for_file: library_private_types_in_public_api

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/account.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/components/my_button.dart';
import 'package:flutter_store_shoe/views/components/my_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterView extends StatefulWidget {
  final AccountController controller;

  const RegisterView({Key? key, required this.controller}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterView> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? errorText;
  bool showPass = false;
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

  void _login(BuildContext context) async {
    final userName = userNameController.text;
    final password = passwordController.text;
  }

  void showMessage(BuildContext context, String message) {
    final materialBanner = MaterialBanner(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      backgroundColor: Colors.transparent,
      forceActionsBelow: true,
      content: AwesomeSnackbarContent(
        title: 'Oh Hey!!',
        message: errorText ?? "",
        contentType: ContentType.success,
        inMaterialBanner: true,
      ),
      actions: const [SizedBox.shrink()],
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentMaterialBanner()
      ..showMaterialBanner(materialBanner);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng ký'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height * 0.2),
              Image.asset(imgLogo, width: 300),
              Row(
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
              MyTextField(
                  hintText: "Email or UserName",
                  controller: userNameController),
              SizedBox(height: screenSize.height * 0.01),
              MyTextField(
                  hintText: "Password",
                  onPressed: showPassword,
                  obsecureText: showPass,
                  icon: showPass ? Icons.visibility_off : Icons.visibility,
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
                            unselectedWidgetColor: Colors.green[500],
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
                        color: Colors.black.withOpacity(0.6), fontSize: 15),
                  ),
                  Text(
                    "and Terms of Use.",
                    style: GoogleFonts.roboto(
                        color: Colors.black.withOpacity(0.6), fontSize: 15),
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
                  onTap: () {
                    _login(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
