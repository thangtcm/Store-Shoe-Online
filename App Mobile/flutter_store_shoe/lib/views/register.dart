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
        // register3yj (44:3431)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barsstatusbariphonexlightk7T (44:3432)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41*fem),
              padding: EdgeInsets.fromLTRB(23.97*fem, 14*fem, 14.5*fem, 12*fem),
              width: double.infinity,
              height: 44*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      // barsstatusbariphonextimelight2 (44:3452)
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
                    // mobilesignales3 (44:3446)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                    width: 19.4*fem,
                    height: 10.67*fem,
                    child: Image.asset(
                      'assets/design/images/mobile-signal-Vso.png',
                      width: 19.4*fem,
                      height: 10.67*fem,
                    ),
                  ),
                  Container(
                    // wifiMmT (44:3442)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                    width: 17.43*fem,
                    height: 10.97*fem,
                    child: Image.asset(
                      'assets/design/images/wifi-vgH.png',
                      width: 17.43*fem,
                      height: 10.97*fem,
                    ),
                  ),
                  Container(
                    // batteryG7j (44:3434)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                    width: 24.5*fem,
                    height: 10.5*fem,
                    child: Image.asset(
                      'assets/design/images/battery-tQh.png',
                      width: 24.5*fem,
                      height: 10.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame427323258maH (462:999)
              margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 49*fem, 25.3*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame427323257gx9 (462:953)
                    margin: EdgeInsets.fromLTRB(39*fem, 0*fem, 39*fem, 19.5*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame427323256R93 (462:952)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vectorYjT (44:3454)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24.5*fem),
                                width: 110.16*fem,
                                height: 34.7*fem,
                                child: Image.asset(
                                  'assets/design/images/vector-L3j.png',
                                  width: 110.16*fem,
                                  height: 34.7*fem,
                                ),
                              ),
                              Center(
                                // welcometonikesmembersrk9 (44:3455)
                                child: Container(
                                  constraints: BoxConstraints (
                                    maxWidth: 246*fem,
                                  ),
                                  child: Text(
                                    'Welcome to Nike’s Members.',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 30*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1725*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame427323249wWh (462:943)
                          margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 20*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                // donthaveanaccountTzq (462:944)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  child: Text(
                                    'Don’t have an account?',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1725*ffem/fem,
                                      color: Color(0xff8d8d8d),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Center(
                                  // signinfLD (462:945)
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      'Sign in',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1725*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame427323259ZRb (462:1000)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame18Wbj (44:3505)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19.5*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame13SkH (44:3499)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      // inputabb (44:3456)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 20*fem, 18*fem),
                                        width: double.infinity,
                                        height: 53*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff3a3a3a)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(8*fem),
                                        ),
                                        child: Container(
                                          // frame5HT (I44:3456;44:2938)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Text(
                                            'First Name',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff8d8d8d),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20*fem,
                                    ),
                                    TextButton(
                                      // inputmAH (44:3485)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 20*fem, 18*fem),
                                        width: double.infinity,
                                        height: 53*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff3a3a3a)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(8*fem),
                                        ),
                                        child: Container(
                                          // frame4fB (I44:3485;44:2938)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Text(
                                            'Last Name',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff8d8d8d),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20*fem,
                                    ),
                                    TextButton(
                                      // inputAy7 (44:3488)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 20*fem, 18*fem),
                                        width: double.infinity,
                                        height: 53*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff3a3a3a)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(8*fem),
                                        ),
                                        child: Container(
                                          // framegRf (I44:3488;44:2938)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Text(
                                            'Number Phone',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff8d8d8d),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20*fem,
                                    ),
                                    TextButton(
                                      // inputCQ1 (44:3457)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(17*fem, 7*fem, 4*fem, 6*fem),
                                        width: double.infinity,
                                        height: 53*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff3a3a3a)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(8*fem),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // frameUsK (I44:3457;44:2931)
                                              margin: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 12*fem),
                                              width: 263*fem,
                                              height: double.infinity,
                                              child: Text(
                                                'Password',
                                                style: SafeGoogleFont (
                                                  'Roboto',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.1725*ffem/fem,
                                                  color: Color(0xff8d8d8d),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              fit: FlexFit.loose,
                                              child: TextButton(
                                                // buttonshowpasswordBmj (I44:3457;44:3141)
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 40*fem,
                                                  height: 40*fem,
                                                  child: Image.asset(
                                                    'assets/design/images/button-show-password-Xbw.png',
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20*fem,
                                    ),
                                    TextButton(
                                      // inputfS1 (44:3491)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(17*fem, 7*fem, 4*fem, 6*fem),
                                        width: double.infinity,
                                        height: 53*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff3a3a3a)),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(8*fem),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              fit: FlexFit.loose,
                                              child: Container(
                                                // frame9MB (I44:3491;44:2931)
                                                margin: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 12*fem),
                                                width: 263*fem,
                                                height: double.infinity,
                                                child: Text(
                                                  'Confirm Password',
                                                  style: SafeGoogleFont (
                                                    'Roboto',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.1725*ffem/fem,
                                                    color: Color(0xff8d8d8d),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              // buttonshowpasswordSLH (I44:3491;44:3141)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                width: 40*fem,
                                                height: 40*fem,
                                                child: Image.asset(
                                                  'assets/design/images/button-show-password-xiV.png',
                                                  width: 40*fem,
                                                  height: 40*fem,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame15Xcd (44:3502)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                width: double.infinity,
                                height: 24*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // checkboxex9 (44:3461)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 24*fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration (
                                            border: Border.all(color: Color(0x666f767d)),
                                            color: Color(0xfffcfcfc),
                                            borderRadius: BorderRadius.circular(6*fem),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.loose,
                                      child: Container(
                                        // rememberme98D (44:3462)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Remember me?',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame427323251Sd7 (462:969)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                // bycontinutingiagreetonikespriv (462:970)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.5*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 253*fem,
                                  ),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.171875*ffem/fem,
                                        color: Color(0xff8d8d8d),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'By continuting, I agree to Nike’s ',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Privancy Policy',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff706d6d),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' and ',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff8d8d8d),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Term of Use.',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff6f6d6d),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame427323250NqX (462:971)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // button841 (462:972)
                                      width: double.infinity,
                                      height: 60*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff272b30)),
                                        color: Color(0xff1a1d1f),
                                        borderRadius: BorderRadius.circular(37*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Join us',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xfffcfcfc),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14.5*fem,
                                    ),
                                    Center(
                                      // orjoinusbyaccountD5T (462:973)
                                      child: Text(
                                        'Or join us by account',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.1725*ffem/fem,
                                          color: Color(0xff8d8d8d),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14.5*fem,
                                    ),
                                    Container(
                                      // buttonJsb (462:974)
                                      padding: EdgeInsets.fromLTRB(120.5*fem, 18*fem, 5*fem, 18*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffefefef)),
                                        color: Color(0xfffcfcfc),
                                        borderRadius: BorderRadius.circular(37*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            fit: FlexFit.loose,
                                            child: Container(
                                              // logoicongoogle2Yh (I462:974;33:656)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                              width: 24*fem,
                                              height: 24*fem,
                                              child: Image.asset(
                                                'assets/design/images/logo-icon-google-ngy.png',
                                                width: 24*fem,
                                                height: 24*fem,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            fit: FlexFit.loose,
                                            child: Text(
                                              // buttonji1 (I462:974;33:655)
                                              'Google',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff1a1d1f),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // seperatorU9o (44:3466)
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