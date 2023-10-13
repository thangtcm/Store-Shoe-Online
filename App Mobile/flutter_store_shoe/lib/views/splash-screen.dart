import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:frontend_shop/shared/utils.dart';
import 'dart:math' as math;

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // splashscreenNfK (3:174)
        width: double.infinity,
        height: 926 * fem,
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame11gvu (3:597)
              left: 0 * fem,
              top: 438 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 508.14 * fem,
                  height: 253.58 * fem,
                  child: Container(
                    // frame12nU9 (I3:597;3:549)
                    width: 1656.31 * fem,
                    height: 408.92 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle357FX (I3:597;3:560)
                          left: 0 * fem,
                          top: 191.5628051758 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-35.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle365Lm (I3:597;3:561)
                          left: 0 * fem,
                          top: 164.1967163086 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-36.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle29nFB (I3:597;3:562)
                          left: 0 * fem,
                          top: 136.8306274414 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-29.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle30grM (I3:597;3:563)
                          left: 0 * fem,
                          top: 109.4644775391 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-30.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle31cV7 (I3:597;3:564)
                          left: 0 * fem,
                          top: 82.0983276367 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-31.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle32iY9 (I3:597;3:565)
                          left: 0 * fem,
                          top: 54.7322387695 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-32.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle33Djo (I3:597;3:566)
                          left: 161.3862915039 * fem,
                          top: 27.3660888672 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-33.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle342x9 (I3:597;3:567)
                          left: 366.950378418 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 217.36 * fem,
                              height: 217.36 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(18 * fem),
                                child: Image.asset(
                                  'assets/design/images/rectangle-34.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: -math.pi / 180,
              // frame9jLm (3:455)
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 504.65 * fem,
                  height: 260.04 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle21cvM (I3:455;3:387)
                        left: 0 * fem,
                        top: 31.9463653564 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-21.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle27KJy (I3:455;3:393)
                        left: 170.5230712891 * fem,
                        top: 12.3665466309 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-27.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle282UH (I3:455;3:394)
                        left: 373.044128418 * fem,
                        top: -10.0000152588 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-28.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle24LE5 (I3:455;3:390)
                        left: 575.5651855469 * fem,
                        top: -10.0000152588 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-24.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle2538V (I3:455;3:391)
                        left: 778.0862731934 * fem,
                        top: -10.0000152588 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-25.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle269xD (I3:455;3:392)
                        left: 980.607208252 * fem,
                        top: -10.0000152588 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-26.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle22r5w (I3:455;3:388)
                        left: 1183.1302833557 * fem,
                        top: -10.0000152588 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-22.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle23kh7 (I3:455;3:389)
                        left: 1385.6514129639 * fem,
                        top: -10.0000152588 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-23.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // frame10smj (3:490)
              left: 0 * fem,
              top: 221.8751525879 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 504.54 * fem,
                  height: 259.31 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle12xoB (I3:490;3:469)
                        left: 0 * fem,
                        top: 41.9466247559 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-12.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle14GYy (I3:490;3:470)
                        left: 175.5000610352 * fem,
                        top: 12.0768432617 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-14.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle15n1X (I3:490;3:471)
                        left: 380.0001831055 * fem,
                        top: -17.79296875 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-15.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle16h8V (I3:490;3:472)
                        left: 584.5002441406 * fem,
                        top: -47.6627502441 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-16.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle17bzZ (I3:490;3:473)
                        left: 789.0003356934 * fem,
                        top: -77.5325469971 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-17.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle186wK (I3:490;3:474)
                        left: 993.5003967285 * fem,
                        top: -107.40234375 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-18.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle1912h (I3:490;3:475)
                        left: 1198.0005302429 * fem,
                        top: -137.2721405029 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-19.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle20JnV (I3:490;3:476)
                        left: 1402.5006561279 * fem,
                        top: -167.1419219971 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 217.36 * fem,
                            height: 217.36 * fem,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18 * fem),
                              child: Image.asset(
                                'assets/design/images/rectangle-20.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle39816zvD (3:184)
              left: 0 * fem,
              top: 535 * fem,
              child: Align(
                child: SizedBox(
                  width: 428 * fem,
                  height: 257 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 0.256),
                        colors: <Color>[Color(0x00000000), Color(0xff000000)],
                        stops: <double>[0, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame4fFf (3:183)
              left: 0 * fem,
              top: 738 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    26 * fem, 31 * fem, 184 * fem, 31 * fem),
                width: 428 * fem,
                height: 188 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff000000),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // buttonkH7 (44:2636)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 20 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 99 * fem,
                          height: 44 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffefefef)),
                            color: Color(0xfffcfcfc),
                            borderRadius: BorderRadius.circular(23 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Join Us',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.8461538462 * ffem / fem,
                                letterSpacing: -0.13 * fem,
                                color: Color(0xff1a1d1f),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // buttonkgR (44:2643)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 99 * fem,
                        height: 44 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff272b30)),
                          color: Color(0xff1a1d1f),
                          borderRadius: BorderRadius.circular(23 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.8461538462 * ffem / fem,
                              letterSpacing: -0.13 * fem,
                              color: Color(0xfffcfcfc),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // barsstatusbariphonexlightbww (3:857)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    23.97 * fem, 14 * fem, 14.5 * fem, 12 * fem),
                width: 428 * fem,
                height: 44 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // barsstatusbariphonextimelightU (3:877)
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
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // mobilesignalWxR (3:871)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5.74 * fem, 0 * fem),
                      width: 19.4 * fem,
                      height: 10.67 * fem,
                      child: Image.asset(
                        'assets/design/images/mobile-signal.png',
                        width: 19.4 * fem,
                        height: 10.67 * fem,
                      ),
                    ),
                    Container(
                      // wifiRJh (3:867)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 11.26 * fem, 0.37 * fem),
                      width: 17.43 * fem,
                      height: 10.97 * fem,
                      child: Image.asset(
                        'assets/design/images/wifi.png',
                        width: 17.43 * fem,
                        height: 10.97 * fem,
                      ),
                    ),
                    Container(
                      // battery8iu (3:859)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0.5 * fem, 0 * fem, 0 * fem),
                      width: 24.5 * fem,
                      height: 10.5 * fem,
                      child: Image.asset(
                        'assets/design/images/battery.png',
                        width: 24.5 * fem,
                        height: 10.5 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // bringingnikemembersthebestprod (44:315)
              left: 26 * fem,
              top: 609.5 * fem,
              child: Align(
                child: SizedBox(
                  width: 318 * fem,
                  height: 141 * fem,
                  child: Text(
                    'Bringing Nike Members the best products, inspiration and storeies in sport.',
                    style: SafeGoogleFont(
                      'Roboto',
                      fontSize: 30 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1725 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
