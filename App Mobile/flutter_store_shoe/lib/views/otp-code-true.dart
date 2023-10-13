import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_shop/shared/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // otpcodetrueNYH (44:4235)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barsstatusbariphonexlightGtZ (44:4236)
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
                      // barsstatusbariphonextimelightM (44:4256)
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
                    // mobilesignalbJZ (44:4250)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                    width: 19.4*fem,
                    height: 10.67*fem,
                    child: Image.asset(
                      'assets/design/images/mobile-signal-X9j.png',
                      width: 19.4*fem,
                      height: 10.67*fem,
                    ),
                  ),
                  Container(
                    // wifi6m7 (44:4246)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                    width: 17.43*fem,
                    height: 10.97*fem,
                    child: Image.asset(
                      'assets/design/images/wifi-Kz9.png',
                      width: 17.43*fem,
                      height: 10.97*fem,
                    ),
                  ),
                  Container(
                    // batteryQmo (44:4238)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                    width: 24.5*fem,
                    height: 10.5*fem,
                    child: Image.asset(
                      'assets/design/images/battery-tiu.png',
                      width: 24.5*fem,
                      height: 10.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // component1jJH (44:4260)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 350*fem, 32.5*fem),
              width: 24*fem,
              height: 24*fem,
              child: Image.asset(
                'assets/design/images/component-1-iWu.png',
                width: 24*fem,
                height: 24*fem,
              ),
            ),
            Center(
              // verificationSTb (44:4258)
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
              // wejustsendyouaverifycodechecky (44:4259)
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
              // otpbjo (44:4261)
              margin: EdgeInsets.fromLTRB(83*fem, 0*fem, 83*fem, 452*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame427323200Y9F (I44:4261;44:4104)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 1*fem, 34*fem),
                    width: double.infinity,
                    height: 127*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // frame4273231994NV (I44:4261;44:4105)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 260*fem,
                            height: 95*fem,
                            child: Container(
                              // frame175Pff (I44:4261;44:4106)
                              width: double.infinity,
                              height: 72*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // verifycodeL57 (I44:4261;44:4107)
                                    width: 56*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffefefef),
                                      borderRadius: BorderRadius.circular(12*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '7',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Roboto',
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
                                    // verifycodeC7K (I44:4261;44:4108)
                                    width: 56*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffefefef),
                                      borderRadius: BorderRadius.circular(12*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Roboto',
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
                                    // verifycodefFo (I44:4261;44:4109)
                                    width: 56*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffefefef),
                                      borderRadius: BorderRadius.circular(12*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Roboto',
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
                                    // verifycodejFf (I44:4261;44:4110)
                                    width: 56*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffefefef),
                                      borderRadius: BorderRadius.circular(12*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 48*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1*ffem/fem,
                                          letterSpacing: -1.44*fem,
                                          color: Color(0xff1a1d1f),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame427323198VEy (I44:4215;44:4112)
                          margin: EdgeInsets.fromLTRB(68.5*fem, 100*fem, 68.5*fem, 0*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // didntreceiveotp2Eu (I44:4215;44:4113)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
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
                              Container(
                                margin: EdgeInsets.fromLTRB(68.5*fem, 0*fem, 68.5*fem, 0*fem),
                                child: Text(
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
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 40*fem, 0*fem, 0*fem),
                    // buttongc9 (I44:4261;44:4115)
                    padding: EdgeInsets.fromLTRB(92*fem, 20*fem, 90*fem, 20*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff272b30)),
                      color: Color(0xff1a1d1f),
                      borderRadius: BorderRadius.circular(37*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            // component1CKb (I44:4261;44:4115;44:371)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/design/images/component-1-CB3.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                        ),
                        Text(
                          // buttonuE1 (I44:4261;44:4115;44:372)
                          'Sign in',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.1725*ffem/fem,
                            color: Color(0xfffcfcfc),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // seperatorEXB (44:4264)
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