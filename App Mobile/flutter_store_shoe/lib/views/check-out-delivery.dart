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
        // checkoutdeliveryQ88 (798:2229)
        width: double.infinity,
        height: 1427*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame4273233048K2 (886:2569)
              left: 0*fem,
              top: 95*fem,
              child: Container(
                width: 428*fem,
                height: 1332*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // summaryqjE (886:2411)
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
                            // frame427323300LR6 (I886:2411;886:2276)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // summaryHbE (I886:2411;886:2277)
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
                                  // frame427323299BRi (I886:2411;886:2278)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                                  height: 24*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // itemshur (I886:2411;886:2279)
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
                                        // component12BS (I886:2411;886:2280)
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/design/images/component-1-KVi.png',
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
                      // deliveryLhv (886:2488)
                      margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 26*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // deliverygFz (I886:2488;855:4423)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25.5*fem),
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
                            // frame427323297Ck8 (I886:2488;855:3635)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame427323290jzx (I886:2488;855:3636)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // howwouldyouliketogetyourorders (I886:2488;855:3637)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                        child: Text(
                                          'How would you like to get your order?',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autolayouthorizontalNHE (I886:2488;855:3638)
                                        padding: EdgeInsets.fromLTRB(21*fem, 30.38*fem, 245*fem, 30.38*fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff000000)),
                                          borderRadius: BorderRadius.circular(12*fem),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // frameULG (I886:2488;855:3639)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                              width: 24*fem,
                                              height: 21.23*fem,
                                              child: Image.asset(
                                                'assets/design/images/frame.png',
                                                width: 24*fem,
                                                height: 21.23*fem,
                                              ),
                                            ),
                                            Center(
                                              // deliveritnrk (I886:2488;855:3648)
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                child: Text(
                                                  'Deliver It',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Roboto',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.1725*ffem/fem,
                                                    color: Color(0xff000000),
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
                                  // frame427323294VWG (I886:2488;855:3649)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 36*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // enteryournameandaddressdMa (I886:2488;855:3650)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                        child: Text(
                                          'Enter your name and address:',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame427323291XSx (I886:2488;855:3651)
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                              // inputsmi (I886:2488;855:3652)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 17*fem, 18*fem),
                                                width: double.infinity,
                                                height: 53*fem,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xff3a3a3a)),
                                                  color: Color(0xffffffff),
                                                  borderRadius: BorderRadius.circular(3*fem),
                                                ),
                                                child: Container(
                                                  // frameNiU (I886:2488;855:3652;44:2938)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                                                  width: 287*fem,
                                                  height: double.infinity,
                                                  child: Text(
                                                    'First Name*',
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
                                            SizedBox(
                                              height: 20*fem,
                                            ),
                                            TextButton(
                                              // input4rC (I886:2488;855:3653)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 17*fem, 18*fem),
                                                width: double.infinity,
                                                height: 53*fem,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xff3a3a3a)),
                                                  color: Color(0xffffffff),
                                                  borderRadius: BorderRadius.circular(3*fem),
                                                ),
                                                child: Container(
                                                  // frameapY (I886:2488;855:3653;44:2938)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                                                  width: 287*fem,
                                                  height: double.infinity,
                                                  child: Text(
                                                    'Last Name*',
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
                                            SizedBox(
                                              height: 20*fem,
                                            ),
                                            Container(
                                              // inputg6t (I886:2488;855:3654)
                                              padding: EdgeInsets.fromLTRB(17*fem, 15*fem, 11*fem, 14*fem),
                                              width: double.infinity,
                                              height: 53*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xff3a3a3a)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // framen9v (I886:2488;855:3654;798:2598)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 37*fem, 4*fem),
                                                    width: 287*fem,
                                                    height: double.infinity,
                                                    child: Text(
                                                      'Province/Municipality',
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
                                                    // component1UYY (I886:2488;855:3654;798:2600)
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                    child: Image.asset(
                                                      'assets/design/images/component-1-RF6.png',
                                                      width: 24*fem,
                                                      height: 24*fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20*fem,
                                            ),
                                            Container(
                                              // inputzWt (I886:2488;855:3655)
                                              padding: EdgeInsets.fromLTRB(17*fem, 15*fem, 11*fem, 14*fem),
                                              width: double.infinity,
                                              height: 53*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xff3a3a3a)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // frametsA (I886:2488;855:3655;798:2598)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 37*fem, 4*fem),
                                                    width: 287*fem,
                                                    height: double.infinity,
                                                    child: Text(
                                                      'District/Town',
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
                                                    // component1bWg (I886:2488;855:3655;798:2600)
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                    child: Image.asset(
                                                      'assets/design/images/component-1-c5n.png',
                                                      width: 24*fem,
                                                      height: 24*fem,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20*fem,
                                            ),
                                            TextButton(
                                              // inputJvt (I886:2488;855:3656)
                                              onPressed: () {},
                                              style: TextButton.styleFrom (
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 17*fem, 18*fem),
                                                width: double.infinity,
                                                height: 53*fem,
                                                decoration: BoxDecoration (
                                                  border: Border.all(color: Color(0xff3a3a3a)),
                                                  color: Color(0xffffffff),
                                                  borderRadius: BorderRadius.circular(3*fem),
                                                ),
                                                child: Container(
                                                  // framecRn (I886:2488;855:3656;44:2938)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                                                  width: 287*fem,
                                                  height: double.infinity,
                                                  child: Text(
                                                    'Address details',
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
                                Container(
                                  // frame427323296iUp (I886:2488;855:3657)
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // whatsyourcontactinformationUD6 (I886:2488;855:3658)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                        child: Text(
                                          'What’s your contact information?',
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.1725*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame427323295ZkL (I886:2488;855:3659)
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // frame4273232927mr (I886:2488;855:3660)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextButton(
                                                    // inputTap (I886:2488;855:3661)
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom (
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 17*fem, 18*fem),
                                                      width: double.infinity,
                                                      height: 53*fem,
                                                      decoration: BoxDecoration (
                                                        border: Border.all(color: Color(0xff3a3a3a)),
                                                        color: Color(0xffffffff),
                                                        borderRadius: BorderRadius.circular(3*fem),
                                                      ),
                                                      child: Container(
                                                        // framea9e (I886:2488;855:3661;44:2938)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                                                        width: 287*fem,
                                                        height: double.infinity,
                                                        child: Text(
                                                          'Email',
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
                                                  Container(
                                                    // aconfirmationemailwillbesentaf (I886:2488;855:3663)
                                                    margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
                                                    child: Text(
                                                      'A confirmation email will be sent after checkout.',
                                                      style: SafeGoogleFont (
                                                        'Roboto',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.7142857143*ffem/fem,
                                                        color: Color(0xff6c6c6c),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // frame427323293mjv (I886:2488;855:3664)
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextButton(
                                                    // input8aU (I886:2488;855:3665)
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom (
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 17*fem, 18*fem),
                                                      width: double.infinity,
                                                      height: 53*fem,
                                                      decoration: BoxDecoration (
                                                        border: Border.all(color: Color(0xff3a3a3a)),
                                                        color: Color(0xffffffff),
                                                        borderRadius: BorderRadius.circular(3*fem),
                                                      ),
                                                      child: Container(
                                                        // frameF9J (I886:2488;855:3665;44:2938)
                                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 0*fem),
                                                        width: 287*fem,
                                                        height: double.infinity,
                                                        child: Text(
                                                          'Phone Number',
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
                                                  Container(
                                                    // acarriermightcontactyouconfirm (I886:2488;855:3667)
                                                    margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
                                                    child: Text(
                                                      'A carrier might contact you confirm delivery.',
                                                      style: SafeGoogleFont (
                                                        'Roboto',
                                                        fontSize: 14*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.7142857143*ffem/fem,
                                                        color: Color(0xff6c6c6c),
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
                                Container(
                                  // autogroupbuggret (4ztc17tr2EWtxcmSZPbUgg)
                                  padding: EdgeInsets.fromLTRB(0*fem, 36*fem, 0*fem, 36*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // confirmnoS (I886:2488;855:3668)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 36*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // checkboxvek (I886:2488;855:3669)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom (
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                  decoration: BoxDecoration (
                                                    border: Border.all(color: Color(0x666f767d)),
                                                    color: Color(0xfffcfcfc),
                                                    borderRadius: BorderRadius.circular(6*fem),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // ihavereadandconsenttoeshopworl (I886:2488;855:3671)
                                              constraints: BoxConstraints (
                                                maxWidth: 341*fem,
                                              ),
                                              child: Text(
                                                'I have read and consent to eShopWorld processing my information in accordance with the Privacy Statement and Cookie Policy. eShopWorld is a trusted Nike partner.',
                                                style: SafeGoogleFont (
                                                  'Roboto',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.7142857143*ffem/fem,
                                                  color: Color(0xff8d8d8d),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextButton(
                                        // buttonJQQ (I886:2488;855:3672)
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
                                              'Continue',
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
                                  // frame427323236PAx (I886:2488;855:3673)
                                  width: double.infinity,
                                  height: 134*fem,
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
            ),
            Positioned(
              // frame427323203Lrt (798:2247)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                width: 428*fem,
                height: 95*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // barsstatusbariphonexlightSf2 (798:2248)
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
                            // barsstatusbariphonextimelightM (798:2268)
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
                            // mobilesignalPig (798:2262)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                            width: 19.4*fem,
                            height: 10.67*fem,
                            child: Image.asset(
                              'assets/design/images/mobile-signal-JXr.png',
                              width: 19.4*fem,
                              height: 10.67*fem,
                            ),
                          ),
                          Container(
                            // wifiJKr (798:2258)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                            width: 17.43*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-ykk.png',
                              width: 17.43*fem,
                              height: 10.97*fem,
                            ),
                          ),
                          Container(
                            // battery1zx (798:2250)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                            width: 24.5*fem,
                            height: 10.5*fem,
                            child: Image.asset(
                              'assets/design/images/battery-iGg.png',
                              width: 24.5*fem,
                              height: 10.5*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame427323201jg4 (798:2270)
                      width: double.infinity,
                      height: 44*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Container(
                        // frame4273232015jv (798:2464)
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
                              // component1byA (798:2465)
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
                                    'assets/design/images/component-1-voa.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              // checkout6f2 (798:2466)
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
            ),
            Positioned(
              // seperatorCxx (798:2275)
              left: 147*fem,
              top: 1415*fem,
              child: Align(
                child: SizedBox(
                  width: 134*fem,
                  height: 5*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(100*fem),
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame427323207jCC (798:2276)
              left: 26*fem,
              top: 1306*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 28*fem, 32*fem, 28*fem),
                width: 372*fem,
                height: 80*fem,
                decoration: BoxDecoration (
                  color: Color(0xff000000),
                  borderRadius: BorderRadius.circular(40*fem),
                ),
                child: Container(
                  // frame427323206E8x (798:2278)
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // component1kd6 (798:2279)
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
                              'assets/design/images/component-1-Hqa.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // component1btc (798:2280)
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
                              'assets/design/images/component-1-LrL.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // component1t72 (798:2281)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51.49*fem, 0*fem),
                        width: 19.51*fem,
                        height: 18*fem,
                        child: Image.asset(
                          'assets/design/images/component-1-BDA.png',
                          width: 19.51*fem,
                          height: 18*fem,
                        ),
                      ),
                      Container(
                        // component1Q5N (798:2282)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/design/images/component-1-xHn.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                      Container(
                        // component18XA (798:2283)
                        width: 18*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/design/images/component-1-LFr.png',
                          width: 18*fem,
                          height: 20*fem,
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
          );
  }
}