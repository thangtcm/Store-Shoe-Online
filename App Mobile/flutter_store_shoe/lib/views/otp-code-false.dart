// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // otpcodefalsewT7 (44:3622)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barsstatusbariphonexlight3FF (44:3623)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 25 * fem),
              padding: EdgeInsets.fromLTRB(
                  23.97 * fem, 14 * fem, 14.5 * fem, 12 * fem),
              width: double.infinity,
              height: 44 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      // barsstatusbariphonextimelight8 (44:3643)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 249.57 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(
                          13.5 * fem, 0 * fem, 21.13 * fem, 0 * fem),
                      height: double.infinity,
                      child: Text(
                        '9:41',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Text',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          letterSpacing: -0.3000000119 * fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // mobilesignalyHK (44:3637)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 5.74 * fem, 0 * fem),
                    width: 19.4 * fem,
                    height: 10.67 * fem,
                    child: Image.asset(
                      'assets/design/images/mobile-signal-R4M.png',
                      width: 19.4 * fem,
                      height: 10.67 * fem,
                    ),
                  ),
                  Container(
                    // wifitQH (44:3633)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 11.26 * fem, 0.37 * fem),
                    width: 17.43 * fem,
                    height: 10.97 * fem,
                    child: Image.asset(
                      'assets/design/images/wifi-NNm.png',
                      width: 17.43 * fem,
                      height: 10.97 * fem,
                    ),
                  ),
                  Container(
                    // batterybZb (44:3625)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0.5 * fem, 0 * fem, 0 * fem),
                    width: 24.5 * fem,
                    height: 10.5 * fem,
                    child: Image.asset(
                      'assets/design/images/battery-xMX.png',
                      width: 24.5 * fem,
                      height: 10.5 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // component17Xw (44:4090)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 350 * fem, 32.5 * fem),
              width: 24 * fem,
              height: 24 * fem,
              child: Image.asset(
                'assets/design/images/component-1-itq.png',
                width: 24 * fem,
                height: 24 * fem,
              ),
            ),
            Center(
              // verification2Q1 (44:4076)
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 136 * fem, 14.5 * fem),
                child: Text(
                  'Verification',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Roboto',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.bold,
                    height: 1.1725 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // wejustsendyouaverifycodechecky (44:4077)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 26 * fem, 24 * fem),
              constraints: BoxConstraints(
                maxWidth: 234 * fem,
              ),
              child: Text(
                'We just send you a verify code. Check your inbox to get them.',
                style: SafeGoogleFont(
                  'Roboto',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.7142857143 * ffem / fem,
                  color: const Color(0xff1a1d1f),
                ),
              ),
            ),
            Container(
              // otpaK3 (44:4215)
              margin:
                  EdgeInsets.fromLTRB(83 * fem, 0 * fem, 83 * fem, 429 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame427323200WCh (I44:4215;44:4104)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 1 * fem, 34 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame4273231993Cd (I44:4215;44:4105)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 11 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame175Ao3 (I44:4215;44:4106)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 11 * fem),
                                width: double.infinity,
                                height: 72 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // verifycodeV4d (I44:4215;44:4107)
                                      width: 56 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffefefef),
                                        borderRadius:
                                            BorderRadius.circular(12 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '7',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 48 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1 * ffem / fem,
                                            letterSpacing: -1.44 * fem,
                                            color: const Color(0xff1a1d1f),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12 * fem,
                                    ),
                                    Container(
                                      // verifycodejzZ (I44:4215;44:4108)
                                      width: 56 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffefefef),
                                        borderRadius:
                                            BorderRadius.circular(12 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '2',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 48 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1 * ffem / fem,
                                            letterSpacing: -1.44 * fem,
                                            color: const Color(0xff1a1d1f),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12 * fem,
                                    ),
                                    Container(
                                      // verifycodeDPw (I44:4215;44:4109)
                                      width: 56 * fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffefefef),
                                        borderRadius:
                                            BorderRadius.circular(12 * fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '1',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Roboto',
                                            fontSize: 48 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1 * ffem / fem,
                                            letterSpacing: -1.44 * fem,
                                            color: const Color(0xff1a1d1f),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12 * fem,
                                    ),
                                    Flexible(
                                      fit: FlexFit.loose,
                                      child: TextButton(
                                        // verifycodeVcM (I44:4215;44:4110)
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 56 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0x3fffbc99),
                                            borderRadius:
                                                BorderRadius.circular(12 * fem),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '1',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Roboto',
                                                fontSize: 48 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1 * ffem / fem,
                                                letterSpacing: -1.44 * fem,
                                                color: const Color(0xffff6955),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                // thecodeyouenteredisincorrectmJ (I44:4215;44:4111)
                                'The code you entered is incorrect.',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1 * ffem / fem,
                                  letterSpacing: -0.12 * fem,
                                  color: const Color(0xffff6955),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame427323198VEy (I44:4215;44:4112)
                          margin: EdgeInsets.fromLTRB(
                              68.5 * fem, 0 * fem, 68.5 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // didntreceiveotp2Eu (I44:4215;44:4113)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'Roboto',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.7142857143 * ffem / fem,
                                      color: const Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Didn’t receive OTP?\n',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.7142857143 * ffem / fem,
                                          color: const Color(0xff7a7d81),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: SafeGoogleFont(
                                          'Roboto',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.7142857143 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                // resendotpfSH (I44:4215;44:4114)
                                'Resend OTP',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Roboto',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.bold,
                                  height: 1.1725 * ffem / fem,
                                  color: const Color(0xff111111),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonoHb (I44:4215;44:4115)
                    width: double.infinity,
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0x7f1a1d1f),
                      borderRadius: BorderRadius.circular(37 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.1725 * ffem / fem,
                          color: const Color(0xbffcfcfc),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // seperatoru5j (44:3656)
              margin:
                  EdgeInsets.fromLTRB(147 * fem, 0 * fem, 147 * fem, 0 * fem),
              width: double.infinity,
              height: 5 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100 * fem),
                color: const Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
