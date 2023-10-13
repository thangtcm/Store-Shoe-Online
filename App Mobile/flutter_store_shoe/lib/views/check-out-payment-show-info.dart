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
        // checkoutpaymentshowinfovac (886:2850)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame427323203oeQ (886:2855)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonexlight7uz (886:2856)
                    padding: EdgeInsets.fromLTRB(23.97*fem, 14*fem, 14.5*fem, 12*fem),
                    width: double.infinity,
                    height: 44*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // barsstatusbariphonextimelight1 (886:2876)
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
                        Container(
                          // mobilesignalf4L (886:2870)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                          width: 19.4*fem,
                          height: 10.67*fem,
                          child: Image.asset(
                            'assets/design/images/mobile-signal-yrG.png',
                            width: 19.4*fem,
                            height: 10.67*fem,
                          ),
                        ),
                        Container(
                          // wifiMxk (886:2866)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                          width: 17.43*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-sTN.png',
                            width: 17.43*fem,
                            height: 10.97*fem,
                          ),
                        ),
                        Container(
                          // batterygVE (886:2858)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                          width: 24.5*fem,
                          height: 10.5*fem,
                          child: Image.asset(
                            'assets/design/images/battery-RXN.png',
                            width: 24.5*fem,
                            height: 10.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame427323201zVv (886:2878)
                    width: double.infinity,
                    height: 44*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Container(
                      // frame427323201Y1e (886:2879)
                      padding: EdgeInsets.fromLTRB(26*fem, 10*fem, 178*fem, 10*fem),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // component1rY8 (886:2880)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 127*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 24*fem,
                                height: 24*fem,
                                child: Image.asset(
                                  'assets/design/images/component-1-jjn.png',
                                  width: 24*fem,
                                  height: 24*fem,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            // checkoutKwW (886:2881)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                              child: Text(
                                'Check out',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff000000),
                                ),
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
              // frame427323304dxC (886:2851)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 315*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // summarymHi (886:2852)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(26*fem, 16*fem, 26*fem, 15.5*fem),
                        width: double.infinity,
                        height: 56*fem,
                        child: Container(
                          // frame427323300Fya (I886:2852;886:2276)
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // summaryD9i (I886:2852;886:2277)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 150*fem, 0*fem),
                                child: Text(
                                  'Summary',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Roboto',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.1725*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // frame427323299icG (I886:2852;886:2278)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                                height: 24*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // itemsTJx (I886:2852;886:2279)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                      child: Text(
                                        '\$414 (2 items)',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.1725*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // component1yHJ (I886:2852;886:2280)
                                      width: 24*fem,
                                      height: 24*fem,
                                      child: Image.asset(
                                        'assets/design/images/component-1-NQx.png',
                                        width: 24*fem,
                                        height: 24*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupqj5n78c (4ztdGkSpstNMTaPrePQJ5N)
                    padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // delivery3Y4 (886:2854)
                          margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 26*fem, 30*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame427323303PM2 (I886:2854;855:4164)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0*fem, 16.5*fem, 0*fem, 15*fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // deliveryGvc (I886:2854;855:3714)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 279*fem, 0.5*fem),
                                          child: Text(
                                            'Delivery',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // component1zLp (I886:2854;855:4850)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                                          width: 24*fem,
                                          height: 24*fem,
                                          child: Image.asset(
                                            'assets/design/images/component-1-eSC.png',
                                            width: 24*fem,
                                            height: 24*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame4273232977gL (I886:2854;855:3715)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // frame427323290UFz (I886:2854;855:3716)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 36*fem),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // hochiminhcitynnU (I886:2854;855:3717)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                            child: Text(
                                              'Ho Chi Minh City',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff8d8d8d),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // thornridgecirsyracuseconnectic (I886:2854;855:3841)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                            child: Text(
                                              '2118 Thornridge Cir. Syracuse, Connecticut 35624',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff8d8d8d),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // savannahnguyenC5W (I886:2854;855:3842)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                            child: Text(
                                              'Savannah Nguyen',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff8d8d8d),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // michaelmitcexamplecom7TN (I886:2854;855:3843)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                            child: Text(
                                              'michael.mitc@example.com',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff8d8d8d),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // SEk (I886:2854;855:3844)
                                            '0749 406 164',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff8d8d8d),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      // buttonNu6 (I886:2854;855:3850)
                                      onPressed: () {},
                                      style: TextButton.styleFrom (
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: 69*fem,
                                        height: 48*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xffefefef)),
                                          color: Color(0xfffcfcfc),
                                          borderRadius: BorderRadius.circular(12*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Edit',
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 15*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.6*ffem/fem,
                                              letterSpacing: -0.15*fem,
                                              color: Color(0xff1a1d1f),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame427323207q1z (886:2885)
              margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 30*fem, 29*fem),
              padding: EdgeInsets.fromLTRB(32*fem, 28*fem, 32*fem, 28*fem),
              width: double.infinity,
              height: 80*fem,
              decoration: BoxDecoration (
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Container(
                // frame4273232068mn (886:2887)
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // component1Tp4 (886:2888)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/design/images/component-1-QXS.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1koA (886:2889)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/design/images/component-1-M6p.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1tXz (886:2890)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51.49*fem, 0*fem),
                      width: 19.51*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-Q5N.png',
                        width: 19.51*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // component1C2t (886:2891)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-Mma.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // component1WpG (886:2892)
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-kPJ.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // seperatorTUc (886:2884)
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