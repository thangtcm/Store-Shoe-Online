import 'package:flutter/material.dart';
import 'dart:ui';
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
        // logino4u (34:255)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // barsstatusbariphonexlightWED (34:256)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 116*fem),
              padding: EdgeInsets.fromLTRB(23.97*fem, 14*fem, 14.5*fem, 12*fem),
              width: double.infinity,
              height: 44*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      // barsstatusbariphonextimelightB (34:276)
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
                    // mobilesignal1qB (34:270)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                    width: 19.4*fem,
                    height: 10.67*fem,
                    child: Image.asset(
                      'assets/design/images/mobile-signal-d45.png',
                      width: 19.4*fem,
                      height: 10.67*fem,
                    ),
                  ),
                  Container(
                    // wifivBT (34:266)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                    width: 17.43*fem,
                    height: 10.97*fem,
                    child: Image.asset(
                      'assets/design/images/wifi-Jo3.png',
                      width: 17.43*fem,
                      height: 10.97*fem,
                    ),
                  ),
                  Container(
                    // battery3G5 (34:258)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                    width: 24.5*fem,
                    height: 10.5*fem,
                    child: Image.asset(
                      'assets/design/images/battery-cXs.png',
                      width: 24.5*fem,
                      height: 10.5*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame4273232559pu (462:951)
              margin: EdgeInsets.fromLTRB(51*fem, 0*fem, 53*fem, 200.3*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame4273232545Cm (462:950)
                    margin: EdgeInsets.fromLTRB(65.5*fem, 0*fem, 65.5*fem, 19.5*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame427323253oPf (462:949)
                          margin: EdgeInsets.fromLTRB(41.42*fem, 0*fem, 41.42*fem, 23*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vectorXaZ (462:942)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24.5*fem),
                                width: 110.16*fem,
                                height: 34.7*fem,
                                child: Image.asset(
                                  'assets/design/images/vector.png',
                                  width: 110.16*fem,
                                  height: 34.7*fem,
                                ),
                              ),
                              Center(
                                // signinEjs (44:2647)
                                child: Text(
                                  'Sign in.',
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
                            ],
                          ),
                        ),
                        Container(
                          // frame427323249xQy (462:941)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                // donthaveanaccounthdT (462:939)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
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
                                  // joinusyay (462:940)

                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      'Join us',
                                      overflow: TextOverflow.ellipsis,
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
                    // frame4273232525tu (462:948)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame17Emo (44:3504)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23.5*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame16aKs (44:3503)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // inputiS5 (44:3037)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                      child: TextButton(
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
                                            // framey77 (I44:3037;44:2938)
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Text(
                                              'Email',
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
                                    ),
                                    TextButton(
                                      // inputtE5 (44:3082)
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
                                                // frameaMo (I44:3082;44:2931)
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
                                            ),
                                            TextButton(
                                              // buttonshowpassword5JZ (I44:3082;44:3141)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                width: 40*fem,
                                                height: 40*fem,
                                                child: Image.asset(
                                                  'assets/design/images/button-show-password.png',
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
                                // frame14B6h (44:3501)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188*fem, 0*fem),
                                width: double.infinity,
                                height: 24*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      fit: FlexFit.loose,
                                      child: Container(
                                        // checkboxW8y (44:3388)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
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
                                    ),
                                    Container(
                                      // remembermebRK (44:3396)
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame427323251Jad (462:947)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                // bycontinutingiagreetonikespriv (44:3080)
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
                                // frame427323250KpV (462:946)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      // button4XB (44:3367)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff272b30)),
                                          color: Color(0xff1a1d1f),
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
                                              color: Color(0xfffcfcfc),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14.5*fem,
                                    ),
                                    Center(
                                      // orcontinueopenbyaccountXff (44:3403)
                                      child: Text(
                                        'Or continue open by account',
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
                                      // button38D (44:3326)
                                      padding: EdgeInsets.fromLTRB(120.5*fem, 18*fem, 119.5*fem, 18*fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffefefef)),
                                        color: Color(0xfffcfcfc),
                                        borderRadius: BorderRadius.circular(37*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // logoicongooglekYR (I44:3326;33:656)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/design/images/logo-icon-google.png',
                                              width: 24*fem,
                                              height: 24*fem,
                                            ),
                                          ),
                                          Flexible(
                                            fit: FlexFit.loose,
                                            child: Text(
                                              // buttonfvH (I44:3326;33:655)
                                              'Google',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.bold,
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
              // seperatorbow (44:3411)
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