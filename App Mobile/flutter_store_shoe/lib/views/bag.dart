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
        // bagitembZr (699:2174)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame427323203tYx (699:2179)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonexlightCpY (699:2180)
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
                          // barsstatusbariphonextimelightV (699:2200)
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
                          // mobilesignalLpG (699:2194)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                          width: 19.4*fem,
                          height: 10.67*fem,
                          child: Image.asset(
                            'assets/design/images/mobile-signal-jfe.png',
                            width: 19.4*fem,
                            height: 10.67*fem,
                          ),
                        ),
                        Container(
                          // wifirXi (699:2190)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                          width: 17.43*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-YBa.png',
                            width: 17.43*fem,
                            height: 10.97*fem,
                          ),
                        ),
                        Container(
                          // batteryksz (699:2182)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                          width: 24.5*fem,
                          height: 10.5*fem,
                          child: Image.asset(
                            'assets/design/images/battery-SYQ.png',
                            width: 24.5*fem,
                            height: 10.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame427323201UZ6 (699:2284)
                    padding: EdgeInsets.fromLTRB(26*fem, 7.5*fem, 29*fem, 7.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // bago5a (699:2285)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 312*fem, 0*fem),
                          child: Text(
                            'Bag',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.1725*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // component17rx (699:2286)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 19*fem,
                          height: 19*fem,
                          child: Image.asset(
                            'assets/design/images/component-1-q1i.png',
                            width: 19*fem,
                            height: 19*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame427323276RMr (699:3246)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 107*fem),
              width: 615*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // itembagkQ8 (699:3144)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(26*fem, 0*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        height: 150*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame42732327338L (I699:3144;699:2967)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                              width: 377*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // frame427323270Mui (I699:3144;699:2713)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 111*fem, 10*fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // rectangle39824tue (I699:3144;699:2682)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                          width: 140*fem,
                                          height: 140*fem,
                                          child: Image.asset(
                                            'assets/design/images/rectangle-39824-bg-LjT.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          // frame4273232652FA (I699:3144;699:2683)
                                          width: 108*fem,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame427323264a1n (I699:3144;699:2684)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // frame4273232626kp (I699:3144;699:2685)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Container(
                                                            // nikewaffledebutF7v (I699:3144;699:2686)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                                            child: Text(
                                                              'Nike Air Max 270',
                                                              style: SafeGoogleFont (
                                                                'Roboto',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.1725*ffem/fem,
                                                                color: Color(0xff000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // frame427323261MAx (I699:3144;699:2687)
                                                            width: 101*fem,
                                                            height: 33*fem,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  // mensshoes6PS (I699:3144;699:2688)
                                                                  left: 0*fem,
                                                                  top: 0*fem,
                                                                  child: Align(
                                                                    child: SizedBox(
                                                                      width: 79*fem,
                                                                      height: 17*fem,
                                                                      child: Text(
                                                                        'Men’s Shoes',
                                                                        style: SafeGoogleFont (
                                                                          'Roboto',
                                                                          fontSize: 14*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.1725*ffem/fem,
                                                                          color: Color(0xff8d8d8d),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  // frame427323260nXA (I699:3144;699:2689)
                                                                  left: 0*fem,
                                                                  top: 16*fem,
                                                                  child: Container(
                                                                    width: 101*fem,
                                                                    height: 17*fem,
                                                                    child: Row(
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        Text(
                                                                          // blackK1J (I699:3144;699:2690)
                                                                          'Black',
                                                                          style: SafeGoogleFont (
                                                                            'Roboto',
                                                                            fontSize: 14*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.1725*ffem/fem,
                                                                            color: Color(0xff8d8d8d),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width: 8*fem,
                                                                        ),
                                                                        Text(
                                                                          // eJU (I699:3144;699:2691)
                                                                          '|',
                                                                          style: SafeGoogleFont (
                                                                            'Roboto',
                                                                            fontSize: 14*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.1725*ffem/fem,
                                                                            color: Color(0xff8d8d8d),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width: 8*fem,
                                                                        ),
                                                                        Text(
                                                                          // size42yrY (I699:3144;699:2692)
                                                                          'Size 42',
                                                                          style: SafeGoogleFont (
                                                                            'Roboto',
                                                                            fontSize: 14*ffem,
                                                                            fontWeight: FontWeight.w400,
                                                                            height: 1.1725*ffem/fem,
                                                                            color: Color(0xff8d8d8d),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                      // frame427323263j52 (I699:3144;699:2693)
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            // vuesaxlinearminuscirlce58t (I699:3144;699:2694)
                                                            width: 24.45*fem,
                                                            height: 24*fem,
                                                            child: Image.asset(
                                                              'assets/design/images/vuesax-linear-minus-cirlce-mw6.png',
                                                              width: 24.45*fem,
                                                              height: 24*fem,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8.07*fem,
                                                          ),
                                                          Container(
                                                            // aLY (I699:3144;699:2700)
                                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                            child: Text(
                                                              '1',
                                                              textAlign: TextAlign.center,
                                                              style: SafeGoogleFont (
                                                                'Inter',
                                                                fontSize: 16*ffem,
                                                                fontWeight: FontWeight.w500,
                                                                height: 1.2125*ffem/fem,
                                                                color: Color(0xff000000),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8.07*fem,
                                                          ),
                                                          Container(
                                                            // vuesaxlinearaddcircleHEx (I699:3144;699:2701)
                                                            width: 24.45*fem,
                                                            height: 24*fem,
                                                            child: Image.asset(
                                                              'assets/design/images/vuesax-linear-add-circle.png',
                                                              width: 24.45*fem,
                                                              height: 24*fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // oyz (I699:3144;699:2708)
                                                '\$249',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Roboto',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.1725*ffem/fem,
                                                  color: Color(0xff000000),
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
                              // frame427323272wqJ (I699:3144;699:2966)
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame427323266u1S (I699:3144;699:2940)
                                    width: 88*fem,
                                    height: 150*fem,
                                    child: Image.asset(
                                      'assets/design/images/frame-427323266.png',
                                      width: 88*fem,
                                      height: 150*fem,
                                    ),
                                  ),
                                  Container(
                                    // frame42732326737e (I699:3144;699:2942)
                                    width: 88*fem,
                                    height: 150*fem,
                                    child: Image.asset(
                                      'assets/design/images/frame-427323267-7jv.png',
                                      width: 88*fem,
                                      height: 150*fem,
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
                  TextButton(
                    // frame427323275yGC (699:3195)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(26*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: 150*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame427323273hCC (I699:3195;699:2967)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                            width: 377*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame4273232702kG (I699:3195;699:2713)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117*fem, 10*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // rectangle39824Tqa (I699:3195;699:2682)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                        width: 140*fem,
                                        height: 140*fem,
                                        child: Image.asset(
                                          'assets/design/images/rectangle-39824-bg-LjT.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        // frame427323265yov (I699:3195;699:2683)
                                        width: 102*fem,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame427323264vjA (I699:3195;699:2684)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // frame427323262fwe (I699:3195;699:2685)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                                    width: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          // nikewaffledebutpJk (I699:3195;699:2686)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                                          child: Text(
                                                            'Nike Air Max 97',
                                                            style: SafeGoogleFont (
                                                              'Roboto',
                                                              fontSize: 14*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.1725*ffem/fem,
                                                              color: Color(0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // frame427323261w8U (I699:3195;699:2687)
                                                          width: double.infinity,
                                                          height: 33*fem,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                // mensshoesV9z (I699:3195;699:2688)
                                                                left: 0*fem,
                                                                top: 0*fem,
                                                                child: Align(
                                                                  child: SizedBox(
                                                                    width: 79*fem,
                                                                    height: 17*fem,
                                                                    child: Text(
                                                                      'Men’s Shoes',
                                                                      style: SafeGoogleFont (
                                                                        'Roboto',
                                                                        fontSize: 14*ffem,
                                                                        fontWeight: FontWeight.w400,
                                                                        height: 1.1725*ffem/fem,
                                                                        color: Color(0xff8d8d8d),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                // frame427323260aSL (I699:3195;699:2689)
                                                                left: 0*fem,
                                                                top: 16*fem,
                                                                child: Container(
                                                                  width: 102*fem,
                                                                  height: 17*fem,
                                                                  child: Row(
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children: [
                                                                      Text(
                                                                        // blackWat (I699:3195;699:2690)
                                                                        'White',
                                                                        style: SafeGoogleFont (
                                                                          'Roboto',
                                                                          fontSize: 14*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.1725*ffem/fem,
                                                                          color: Color(0xff8d8d8d),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width: 8*fem,
                                                                      ),
                                                                      Text(
                                                                        // SzL (I699:3195;699:2691)
                                                                        '|',
                                                                        style: SafeGoogleFont (
                                                                          'Roboto',
                                                                          fontSize: 14*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.1725*ffem/fem,
                                                                          color: Color(0xff8d8d8d),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width: 8*fem,
                                                                      ),
                                                                      Text(
                                                                        // size42b6Y (I699:3195;699:2692)
                                                                        'Size 42',
                                                                        style: SafeGoogleFont (
                                                                          'Roboto',
                                                                          fontSize: 14*ffem,
                                                                          fontWeight: FontWeight.w400,
                                                                          height: 1.1725*ffem/fem,
                                                                          color: Color(0xff8d8d8d),
                                                                        ),
                                                                      ),
                                                                    ],
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
                                                    // frame427323263wRJ (I699:3195;699:2693)
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // vuesaxlinearminuscirlce6oz (I699:3195;699:2694)
                                                          width: 24.45*fem,
                                                          height: 24*fem,
                                                          child: Image.asset(
                                                            'assets/design/images/vuesax-linear-minus-cirlce.png',
                                                            width: 24.45*fem,
                                                            height: 24*fem,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8.07*fem,
                                                        ),
                                                        Container(
                                                          // cGY (I699:3195;699:2700)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                          child: Text(
                                                            '1',
                                                            textAlign: TextAlign.center,
                                                            style: SafeGoogleFont (
                                                              'Inter',
                                                              fontSize: 16*ffem,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1.2125*ffem/fem,
                                                              color: Color(0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8.07*fem,
                                                        ),
                                                        Container(
                                                          // vuesaxlinearaddcirclevY8 (I699:3195;699:2701)
                                                          width: 24.45*fem,
                                                          height: 24*fem,
                                                          child: Image.asset(
                                                            'assets/design/images/vuesax-linear-add-circle-VFE.png',
                                                            width: 24.45*fem,
                                                            height: 24*fem,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              // RDz (I699:3195;699:2708)
                                              '\$165',
                                              textAlign: TextAlign.right,
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff000000),
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
                            // frame427323272MNY (I699:3195;699:2966)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame427323266u9A (I699:3195;699:2940)
                                  width: 88*fem,
                                  height: 150*fem,
                                  child: Image.asset(
                                    'assets/design/images/frame-427323266-GME.png',
                                    width: 88*fem,
                                    height: 150*fem,
                                  ),
                                ),
                                Container(
                                  // frame427323267EhE (I699:3195;699:2942)
                                  width: 88*fem,
                                  height: 150*fem,
                                  child: Image.asset(
                                    'assets/design/images/frame-427323267.png',
                                    width: 88*fem,
                                    height: 150*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autogroup6dfeNYY (4ztZWrhtXSxZKZYMcz6DFe)
                    padding: EdgeInsets.fromLTRB(2*fem, 10*fem, 2*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame427323288Jh6 (756:7926)
                          margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 0*fem, 10*fem),
                          width: 376*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame427323287Eqe (756:7925)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame427323283Ngx (756:7279)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // subtotalvyN (756:7275)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 276*fem, 0*fem),
                                            child: Text(
                                              'Subtotal ',
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
                                            // FVr (756:7278)
                                            '\$414',
                                            textAlign: TextAlign.right,
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
                                    SizedBox(
                                      height: 6*fem,
                                    ),
                                    Container(
                                      // frame427323284nkg (756:7342)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Container(
                                              // shippingwtU (756:7343)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 206*fem, 0*fem),
                                              child: Text(
                                                'Shipping',
                                                style: SafeGoogleFont (
                                                  'Roboto',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.1725*ffem/fem,
                                                  color: Color(0xff8d8d8d),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // standardfreeGQx (756:7344)
                                            'Standard - Free',
                                            textAlign: TextAlign.right,
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
                                    SizedBox(
                                      height: 6*fem,
                                    ),
                                    Container(
                                      // frame427323285zLx (756:7345)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // totalvkQ (756:7277)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 303*fem, 0*fem),
                                            child: Text(
                                              'Total',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.1725*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // FXn (756:7348)
                                            '\$414',
                                            textAlign: TextAlign.right,
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                // buttonoJQ (756:7923)
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 375*fem,
                                  height: 72*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff272b30)),
                                    color: Color(0xff1a1d1f),
                                    borderRadius: BorderRadius.circular(40*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Check out',
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
                            ],
                          ),
                        ),
                        Container(
                          // frame427323236Gxg (756:8131)
                          width: 424*fem,
                          height: 134*fem,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame4273232072wr (699:2208)
              margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 30*fem, 29*fem),
              padding: EdgeInsets.fromLTRB(32*fem, 28*fem, 32*fem, 28*fem),
              width: double.infinity,
              height: 80*fem,
              decoration: BoxDecoration (
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Container(
                // frame427323206YQQ (699:2210)
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // component1fzp (699:2211)
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
                              'assets/design/images/component-1-bPN.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1Awa (699:2212)
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
                            'assets/design/images/component-1-ZDz.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1g9E (699:2213)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51.49*fem, 0*fem),
                      width: 19.51*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-DXW.png',
                        width: 19.51*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // component1Brg (699:2214)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-Nwr.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // component17VS (699:2215)
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-8VW.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // seperatorT3W (699:2207)
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