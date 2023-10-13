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
        // addtobagxfi (699:6559)
        padding: EdgeInsets.fromLTRB(25.5*fem, 24*fem, 0*fem, 41*fem),
        width: double.infinity,
        height: 461*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.only (
            topLeft: Radius.circular(12*fem),
            topRight: Radius.circular(12*fem),
          ),
        ),
        child: Container(
          // frame427323281rm6 (I699:6559;733:6869)
          width: 886*fem,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // itembagz6c (I699:6559;699:3452)
                margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 0*fem),
                width: 589*fem,
                height: 160*fem,
                child: Container(
                  // frame427323273vW4 (I699:6559;699:3453)
                  width: 377*fem,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          // frame4273232704cG (I699:6559;699:3454)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 20*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // rectangle3982411i (I699:6559;699:3455)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                                width: 140*fem,
                                height: 140*fem,
                                child: Image.asset(
                                  'assets/design/images/rectangle-30.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // frame427323265hfE (I699:6559;699:3456)
                                width: 113*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Container(
                                        // frame427323264rHE (I699:6559;699:3457)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              child: Container(
                                                // frame427323262ngg (I699:6559;699:3458)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        // nikewaffledebuttDv (I699:6559;699:3459)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                                        child: Text(
                                                          'Nike Waffle Debut',
                                                          style: SafeGoogleFont (
                                                            'Roboto',
                                                            fontSize: 14*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.1725*ffem/fem,
                                                            color: Color(0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // frame427323261kX2 (I699:6559;699:3460)
                                                      width: 79*fem,
                                                      height: 33*fem,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            // mensshoes4Gp (I699:6559;699:3461)
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
                                                            // blackx7J (I699:6559;699:3463)
                                                            left: 0*fem,
                                                            top: 16*fem,
                                                            child: Align(
                                                              child: SizedBox(
                                                                width: 35*fem,
                                                                height: 17*fem,
                                                                child: Text(
                                                                  'Black',
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
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // frame427323263Dov (I699:6559;699:3466)
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // vuesaxlinearminuscirlceMfE (I699:6559;699:3467)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.07*fem, 0*fem),
                                                    width: 24.45*fem,
                                                    height: 24*fem,
                                                    child: Image.asset(
                                                      'assets/design/images/vuesax-linear-minus-cirlce-VCk.png',
                                                      width: 24.45*fem,
                                                      height: 24*fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    // kxG (I699:6559;699:3473)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 8.07*fem, 0*fem),
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
                                                  Container(
                                                    // vuesaxlinearaddcirclesmz (I699:6559;699:3474)
                                                    width: 24.45*fem,
                                                    height: 24*fem,
                                                    child: Image.asset(
                                                      'assets/design/images/vuesax-linear-add-circle-ztG.png',
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
                                    ),
                                    Text(
                                      // cUg (I699:6559;699:3481)
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
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 41*fem,
              ),
              Container(
                // frame4273232808xp (I699:6559;733:6695)
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // sizeHqi (I699:6559;699:3503)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                      width: double.infinity,
                      child: Text(
                        'Size',
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
                      // sizePNx (I699:6559;699:4031)
                      width: double.infinity,
                      height: 48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(
                                // buttonvdn (I699:6559;699:4031;699:3808)
                                width: 83*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0x7fefefef)),
                                  color: Color(0x7ffcfcfc),
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'EU 38',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.6*ffem/fem,
                                      letterSpacing: -0.15*fem,
                                      color: Color(0xbf1a1d1f),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                          SizedBox(
                            width: 6*fem,
                          ),
                          Container(
                            // buttonNkg (I699:6559;699:4031;699:3806)
                            width: 83*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x7fefefef)),
                              color: Color(0x7ffcfcfc),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Text(
                                'EU 39',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.6*ffem/fem,
                                  letterSpacing: -0.15*fem,
                                  color: Color(0xbf1a1d1f),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6*fem,
                          ),
                          Container(
                            // buttoncf2 (I699:6559;699:4031;699:3811)
                            width: 84*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                              color: Color(0xfffcfcfc),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Text(
                                'EU 40',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttonHmA (I699:6559;699:4031;699:3813)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 81*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 41',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttonxMW (I699:6559;699:4031;699:3815)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 83*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 42',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttondCk (I699:6559;699:4031;699:3817)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 84*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 43',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttonUDN (I699:6559;699:4031;699:3819)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 84*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 44',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttonWQx (I699:6559;699:4031;699:3821)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 83*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 45',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttonkaC (I699:6559;699:4031;699:3823)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 84*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 46',
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
                          SizedBox(
                            width: 6*fem,
                          ),
                          TextButton(
                            // buttonCBJ (I699:6559;699:4031;699:3825)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 83*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff8d8d8d)),
                                color: Color(0xfffcfcfc),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'EU 47',
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
              SizedBox(
                height: 41*fem,
              ),
              Container(
                // buttonSLY (I699:6559;699:3804)
                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                child: TextButton(
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
                        'Add to Bag',
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
              ),
            ],
          ),
        ),
      ),
          );
  }
}