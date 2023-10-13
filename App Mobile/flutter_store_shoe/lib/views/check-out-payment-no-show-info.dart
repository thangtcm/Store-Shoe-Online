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
        // checkoutpaymentnoshowinfoA48 (886:2610)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame427323203fFn (886:2615)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonexlightn5W (886:2616)
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
                          // barsstatusbariphonextimelightT (886:2636)
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
                          // mobilesignalv5E (886:2630)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                          width: 19.4*fem,
                          height: 10.67*fem,
                          child: Image.asset(
                            'assets/design/images/mobile-signal-HYL.png',
                            width: 19.4*fem,
                            height: 10.67*fem,
                          ),
                        ),
                        Container(
                          // wifiS3a (886:2626)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                          width: 17.43*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-HVz.png',
                            width: 17.43*fem,
                            height: 10.97*fem,
                          ),
                        ),
                        Container(
                          // batteryMAY (886:2618)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                          width: 24.5*fem,
                          height: 10.5*fem,
                          child: Image.asset(
                            'assets/design/images/battery-MmA.png',
                            width: 24.5*fem,
                            height: 10.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame427323201fwv (886:2638)
                    width: double.infinity,
                    height: 44*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Container(
                      // frame427323201pZv (886:2639)
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
                            // component19MJ (886:2640)
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
                                  'assets/design/images/component-1-tSC.png',
                                  width: 24*fem,
                                  height: 24*fem,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            // checkoutRpc (886:2641)
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
              // frame427323304jKW (886:2611)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 568*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // summaryruv (886:2612)
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
                          // frame427323300NNU (I886:2612;886:2276)
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // summaryK2p (I886:2612;886:2277)
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
                                // frame427323299S7S (I886:2612;886:2278)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                                height: 24*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // itemsZhr (I886:2612;886:2279)
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
                                      // component14uW (I886:2612;886:2280)
                                      width: 24*fem,
                                      height: 24*fem,
                                      child: Image.asset(
                                        'assets/design/images/component-1-2AU.png',
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
                    // autogroupjssiPwn (4zteKihEbni3mnLgQgJSsi)
                    padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame427323303vwi (I886:2614;904:2437)
                          margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 26*fem, 10*fem),
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
                                    // deliveryRda (I886:2614;904:2438)
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
                                    // component1XwW (I886:2614;904:2439)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                                    width: 24*fem,
                                    height: 24*fem,
                                    child: Image.asset(
                                      'assets/design/images/component-1-DZr.png',
                                      width: 24*fem,
                                      height: 24*fem,
                                    ),
                                  ),
                                ],
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
              // frame427323207Soa (886:2645)
              margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 30*fem, 29*fem),
              padding: EdgeInsets.fromLTRB(32*fem, 28*fem, 32*fem, 28*fem),
              width: double.infinity,
              height: 80*fem,
              decoration: BoxDecoration (
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Container(
                // frame427323206k3a (886:2647)
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // component1GGp (886:2648)
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
                            'assets/design/images/component-1-zfr.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1mDa (886:2649)
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
                            'assets/design/images/component-1-yXW.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1s1i (886:2650)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51.49*fem, 0*fem),
                      width: 19.51*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-1VS.png',
                        width: 19.51*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // component1neU (886:2651)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-jep.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // component1uUC (886:2652)
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-eaL.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // seperator97e (886:2644)
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