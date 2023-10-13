import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_store_shoe/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // otpnocodedxM (44:3507)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barsstatusbariphonexlight8u7 (44:3508)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
              padding: EdgeInsets.fromLTRB(23.97*fem, 14*fem, 14.5*fem, 12*fem),
              width: double.infinity,
              height: 44*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      // barsstatusbariphonextimelightR (44:3528)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 249.57*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 21.13*fem, 0*fem),
                      height: double.infinity,
                      child: Text(
                        '9:41',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          letterSpacing: -0.3000000119*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // mobilesignaleky (44:3522)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                    width: 19.4*fem,
                    height: 10.67*fem,
                    child: Image.asset(
                      'assets/design/images/mobile-signal-d45-zQR.png',
                      width: 19.4*fem,
                      height: 10.67*fem,
                    ),
                  ),
                  Container(
                    // wifiMQV (44:3518)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                    width: 17.43*fem,
                    height: 10.97*fem,
                    child: Image.asset(
                      'assets/design/images/wifi-JVP.png',
                      width: 17.43*fem,
                      height: 10.97*fem,
                    ),
                  ),
                  Container(
                    // batterys7w (44:3510)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                    width: 24.5*fem,
                    height: 10.5*fem,
                    child: Image.asset(
                      'assets/design/images/battery-bbf.png',
                      width: 24.5*fem,
                      height: 10.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // component19bF (44:3576)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 350*fem, 32.5*fem),
              width: 24*fem,
              height: 24*fem,
              child: Image.asset(
                'assets/design/images/component-1-P5b.png',
                width: 24*fem,
                height: 24*fem,
              ),
            ),
            Center(
              // verificationD5K (44:3589)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136*fem, 14.5*fem),
                child: Text(
                  'Verification',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Roboto',
                    fontSize: 24*ffem,
                    fontWeight: FontWeight.bold,
                    height: 1.1725*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // wejustsendyouaverifycodechecky (44:3690)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 24*fem),
              constraints: BoxConstraints (
                maxWidth: 234*fem,
              ),
              child: Text(
                'We just send you a verify code. Check your inbox to get them.',
                style: SafeGoogleFont (
                  'Roboto',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.7142857143*ffem/fem,
                  color: Color(0xff1a1d1f),
                ),
              ),
            ),
            Container(
              // otp8Lh (44:4151)
              margin: EdgeInsets.fromLTRB(83*fem, 0*fem, 83*fem, 452*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame427323200T85 (I44:4151;44:4124)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 1*fem, 34*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame176aTb (I44:4151;44:4141)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          width: double.infinity,
                          height: 72*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                // verifycodeJPb (I44:4151;44:4142)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(27*fem, 20*fem, 27*fem, 20*fem),
                                  width: 56*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff9a9fa5)),
                                    color: Color(0xfffcfcfc),
                                    borderRadius: BorderRadius.circular(12*fem),
                                  ),
                                  child: Center(
                                    // rectangle6bNh (I44:4151;44:4142;302:18975)
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 32*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(2*fem),
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12*fem,
                              ),
                              Container(
                                // verifycodetsb (I44:4151;44:4143)
                                width: 56*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffefefef),
                                  borderRadius: BorderRadius.circular(12*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 48*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1*ffem/fem,
                                      letterSpacing: -1.44*fem,
                                      color: Color(0xff1a1d1f),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12*fem,
                              ),
                              Container(
                                // verifycodekuo (I44:4151;44:4144)
                                width: 56*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffefefef),
                                  borderRadius: BorderRadius.circular(12*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 48*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1*ffem/fem,
                                      letterSpacing: -1.44*fem,
                                      color: Color(0xff1a1d1f),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12*fem,
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Container(
                                  // verifycodepPs (I44:4151;44:4145)
                                  width: 56*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffefefef),
                                    borderRadius: BorderRadius.circular(12*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '8',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 48*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1*ffem/fem,
                                        letterSpacing: -1.44*fem,
                                        color: Color(0xff1a1d1f),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame427323198785 (I44:4151;44:4132)
                          margin: EdgeInsets.fromLTRB(68.5*fem, 0*fem, 68.5*fem, 0*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // didntreceiveotpEyP (I44:4151;44:4133)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.7142857143*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Didn’t receive OTP?\n',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.7142857143*ffem/fem,
                                          color: Color(0xff7a7d81),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.7142857143*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                // resendotpEEd (I44:4151;44:4134)
                                'Resend OTP',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.bold,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff111111),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonNLq (I44:4151;44:4135)
                    width: double.infinity,
                    height: 60*fem,
                    decoration: BoxDecoration (
                      color: Color(0x7f1a1d1f),
                      borderRadius: BorderRadius.circular(37*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.1725*ffem/fem,
                          color: Color(0xbffcfcfc),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // seperatorsHb (44:3546)
              margin: EdgeInsets.fromLTRB(147*fem, 0*fem, 147*fem, 0*fem),
              width: double.infinity,
              height: 5*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(100*fem),
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
          );
  }
}