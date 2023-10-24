// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_store_shoe/controller/account.dart';
import 'package:flutter_store_shoe/utils/const.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmEmailView extends StatefulWidget {
  const ConfirmEmailView({Key? key}) : super(key: key);

  @override
  _ConfirmEmailScreenState createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailView> {
  AccountController controller = Get.put(AccountController());
  int TextCode = 0;
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
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenSize.height * 0.1),
                      Image.asset(imgLogo, width: 300),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verification",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "We just send you a verify code. Check your inbox to get them.",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        keyboardType: TextInputType.number,
                        borderColor: const Color(0xFF512DA8),
                        fillColor: Colors.black.withOpacity(0.1),
                        filled: true,
                        showFieldAsBox: true,
                        autoFocus: true,
                        onSubmit: (Textcode) =>
                            {TextCode = int.tryParse(Textcode)!},
                      ),
                      const SizedBox(height: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Didn’t receive OTP?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                          TextButton(
                              onPressed: null,
                              child: Text("Resend mail",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(12), // <-- Radius
                                  ),
                                  backgroundColor: Colors.black),
                              onPressed: () {
                                controller.ConfirmEmail(TextCode, context);
                              },
                              child: const Text(
                                "Xác Nhận",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    ));
  }
}
