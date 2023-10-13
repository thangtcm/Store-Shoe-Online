import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_shop/shared/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 922;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // addtobagMAY (699:6421)
        padding: EdgeInsets.fromLTRB(20*fem, 10*fem, 20*fem, 10*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff9747ff)),
          borderRadius: BorderRadius.circular(5*fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          
            Container(
              // property1addedtobagzNU (699:6483)
              padding: EdgeInsets.fromLTRB(26*fem, 50*fem, 27*fem, 41*fem),
              width: 428*fem,
              height: 336*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(12*fem),
                  topRight: Radius.circular(12*fem),
                ),
              ),
              child: Container(
                // frame427323282HMa (733:7138)
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // frame427323279v9e (699:6558)
                        margin: EdgeInsets.fromLTRB(127*fem, 0*fem, 127*fem, 38*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Container(
                                // frame427323278Fhi (699:6415)
                                margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 11.5*fem, 13*fem),
                                padding: EdgeInsets.fromLTRB(34.17*fem, 37.75*fem, 33.38*fem, 40.23*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xff0a9f34)),
                                  borderRadius: BorderRadius.circular(49*fem),
                                ),
                                child: Center(
                                  // component1w4k (699:6412)
                                  child: SizedBox(
                                    width: 30.46*fem,
                                    height: 20.02*fem,
                                    child: Image.asset(
                                      'assets/design/images/component-Pd2.png',
                                      width: 30.46*fem,
                                      height: 20.02*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // addedtobagejr (699:6416)
                              'Added to Bag',
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.1725*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      // buttonzYp (699:6519)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 72*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff272b30)),
                          color: Color(0xff1a1d1f),
                          borderRadius: BorderRadius.circular(40*fem),
                        ),
                        child: Center(
                          child: Text(
                            'View Bag',
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
            ),
          ],
        ),
      ),
          );
  }
}