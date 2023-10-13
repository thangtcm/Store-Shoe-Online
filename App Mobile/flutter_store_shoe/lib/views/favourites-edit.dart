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
        // favouritesedituzp (193:961)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame427323203RCU (193:974)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonexlightKoe (193:975)
                    padding: EdgeInsets.fromLTRB(23.97*fem, 14*fem, 14.5*fem, 12*fem),
                    width: double.infinity,
                    height: 44*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            // barsstatusbariphonextimelightn (193:995)
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
                          // mobilesignalbPn (193:989)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                          width: 19.4*fem,
                          height: 10.67*fem,
                          child: Image.asset(
                            'assets/design/images/mobile-signal-Qxh.png',
                            width: 19.4*fem,
                            height: 10.67*fem,
                          ),
                        ),
                        Container(
                          // wifiufN (193:985)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                          width: 17.43*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-ABK.png',
                            width: 17.43*fem,
                            height: 10.97*fem,
                          ),
                        ),
                        Container(
                          // batteryDRA (193:977)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                          width: 24.5*fem,
                          height: 10.5*fem,
                          child: Image.asset(
                            'assets/design/images/battery-aqo.png',
                            width: 24.5*fem,
                            height: 10.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame427323201v4g (193:997)
                    padding: EdgeInsets.fromLTRB(26*fem, 7.5*fem, 27.5*fem, 7.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Center(
                            // favouritespQx (193:998)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223.5*fem, 0*fem),
                              child: Text(
                                'Favourites',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // donevit (193:999)
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Done',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w600,
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
              // frame427323218rcY (193:962)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 88*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupe9epPsN (FXDXbHxBN85YoAfPj5E9ep)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    width: double.infinity,
                    height: 331*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // itemGwA (193:963)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 204*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame427323214cEL (I193:963;113:14610)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                                width: double.infinity,
                                height: 204*fem,
                                decoration: BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/design/images/rectangle-12.png',
                                    ),
                                  ),
                                ),
                                child: Align(
                                  // favouritesV3E (I193:963;113:14640)
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 36*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 144*fem),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Image.asset(
                                          'assets/design/images/favourites-fgD.png',
                                          width: 36*fem,
                                          height: 36*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame427323217YnC (I193:963;113:14814)
                                margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 47*fem, 0*fem),
                                width: double.infinity,
                                height: 114*fem,
                                child: Container(
                                  // frame427323216Hzg (I193:963;113:14791)
                                  width: double.infinity,
                                  height: 89*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // bestsellerEQ8 (I193:963;113:14586)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                        child: Text(
                                          'Best Seller',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xffbc4527),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // nameA2t (I193:963;113:14587)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                        child: Text(
                                          'Nike Waffle Debut',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff111111),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // lorem48G (I193:963;113:14588)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
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
                                      Container(
                                        // frame4273232129vQ (I193:963;113:14589)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                // J2c (I193:963;113:14590)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                child: Text(
                                                  '\$105',
                                                  style: SafeGoogleFont (
                                                    'Roboto',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.1725*ffem/fem,
                                                    color: Color(0xff111111),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // DQU (I193:963;113:14591)
                                              '\$2000',
                                              style: SafeGoogleFont (
                                                'Roboto',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.1725*ffem/fem,
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
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
                          // itemNHN (193:964)
                          width: 204*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame427323214Xg4 (I193:964;113:14610)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                                width: double.infinity,
                                height: 204*fem,
                                decoration: BoxDecoration (
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/design/images/rectangle-12.png',
                                    ),
                                  ),
                                ),
                                child: Align(
                                  // favouritesqAx (I193:964;113:14640)
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 36*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 144*fem),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Image.asset(
                                          'assets/design/images/favourites-fgD.png',
                                          width: 36*fem,
                                          height: 36*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame42732321766t (I193:964;113:14814)
                                margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 53*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // frame427323216Rex (I193:964;113:14791)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogroupedccLG8 (FXDY7ruaWXs5YgadXmEdCc)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                            width: double.infinity,
                                            height: 19*fem,
                                            child: Center(
                                              child: Text(
                                                'Nike Air Max 270',
                                                style: SafeGoogleFont (
                                                  'Roboto',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.1725*ffem/fem,
                                                  color: Color(0xff111111),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // lorem1NG (I193:964;113:14588)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
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
                                          Container(
                                            // frame427323212XrQ (I193:964;113:14589)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    // qcC (I193:964;113:14590)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                    child: Text(
                                                      '\$249',
                                                      style: SafeGoogleFont (
                                                        'Roboto',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.1725*ffem/fem,
                                                        color: Color(0xff111111),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // 9Mz (I193:964;113:14591)
                                                  '\$2000',
                                                  style: SafeGoogleFont (
                                                    'Roboto',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.1725*ffem/fem,
                                                    decoration: TextDecoration.lineThrough,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // frame427323213heQ (I193:964;113:14592)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                      width: 58*fem,
                                      height: 16*fem,
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
                    // itemdnx (193:965)
                    width: 204*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame427323214zNc (I193:965;113:14610)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                          width: double.infinity,
                          height: 204*fem,
                          decoration: BoxDecoration (
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/design/images/rectangle-12.png',
                              ),
                            ),
                          ),
                          child: Align(
                            // favouritesJPJ (I193:965;113:14640)
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              width: 36*fem,
                              height: 36*fem,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 144*fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Image.asset(
                                    'assets/design/images/favourites-fgD.png',
                                    width: 36*fem,
                                    height: 36*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame427323217wBN (I193:965;113:14814)
                          margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 48*fem, 0*fem),
                          width: double.infinity,
                          height: 114*fem,
                          child: Container(
                            // frame4273232165Ha (I193:965;113:14791)
                            width: double.infinity,
                            height: 89*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    // bestsellerDua (I193:965;113:14586)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                    child: Text(
                                      'Best Seller',
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725*ffem/fem,
                                        color: Color(0xffbc4527),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // name9oE (I193:965;113:14587)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                  child: Text(
                                    'Nike Waffle Debut',
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.1725*ffem/fem,
                                      color: Color(0xff111111),
                                    ),
                                  ),
                                ),
                                Container(
                                  // loremgYG (I193:965;113:14588)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
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
                                Container(
                                  // frame427323212bfE (I193:965;113:14589)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          // wUC (I193:965;113:14590)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                          child: Text(
                                            '\$105',
                                            style: SafeGoogleFont (
                                              'Roboto',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.1725*ffem/fem,
                                              color: Color(0xff111111),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // drp (I193:965;113:14591)
                                        '\$2000',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.1725*ffem/fem,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
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
              // frame427323207Pb6 (225:1395)
              margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 30*fem, 29*fem),
              padding: EdgeInsets.fromLTRB(32*fem, 28*fem, 32*fem, 28*fem),
              width: double.infinity,
              height: 80*fem,
              decoration: BoxDecoration (
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Container(
                // frame427323206tXr (225:1397)
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // component1CoS (225:1398)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/design/images/component-1-AJu.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1gTi (225:1399)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-ka5.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Container(
                      // component1NLY (225:1400)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/design/images/component-1-E2V.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1UeU (225:1401)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-MYm.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // component1oRr (225:1402)
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-NVf.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // seperator8U8 (193:1002)
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