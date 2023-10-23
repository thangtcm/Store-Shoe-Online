// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/controller/account.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:flutter_store_shoe/views/account/login.view.dart';
import 'package:flutter_store_shoe/views/components/my_button.dart';
import 'package:flutter_store_shoe/views/components/my_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterView> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController numberPhone = TextEditingController();
  final TextEditingController passwordConfirm = TextEditingController();
  AccountController controller = Get.put(AccountController());
  bool checkLoad = false;
  String? errorText;
  bool showPass = true;
  bool showPassConfirm = true;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  showPasswordConfirm() {
    setState(() {
      showPassConfirm = !showPassConfirm;
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
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            Text(
                              "Welcome to Nike’s",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Members.",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You already have an account?',
                          style: GoogleFonts.roboto(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (content) => const LoginView()));
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
                    MyTextField(hintText: "Full Name", controller: fullName),
                    SizedBox(height: screenSize.height * 0.01),
                    MyTextField(
                        hintText: "Number Phone", controller: numberPhone),
                    SizedBox(height: screenSize.height * 0.01),
                    MyTextField(hintText: "Email", controller: emailController),
                    SizedBox(height: screenSize.height * 0.01),
                    MyTextField(
                        hintText: "UserName", controller: userNameController),
                    SizedBox(height: screenSize.height * 0.01),
                    MyTextField(
                        hintText: "Password",
                        onPressed: showPassword,
                        obsecureText: showPass,
                        icon:
                            showPass ? Icons.visibility_off : Icons.visibility,
                        controller: passwordController),
                    MyTextField(
                        hintText: "Confirm Password",
                        onPressed: showPasswordConfirm,
                        obsecureText: showPassConfirm,
                        icon: showPassConfirm
                            ? Icons.visibility_off
                            : Icons.visibility,
                        controller: passwordConfirm),
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
                        text: "Sign Up",
                        radius: 50,
                        onTap: () async {
                          await controller.SendMail(
                              fullName.text,
                              emailController.text,
                              numberPhone.text,
                              userNameController.text,
                              passwordController.text,
                              passwordConfirm.text,
                              context);
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
