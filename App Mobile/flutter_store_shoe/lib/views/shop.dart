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
        // shopall8pR (105:4401)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame4273232032uo (113:14410)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonexlightYNM (105:4402)
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
                            // barsstatusbariphonextimelight2 (105:4422)
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
                          // mobilesignal4k1 (105:4416)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 0*fem),
                          width: 19.4*fem,
                          height: 10.67*fem,
                          child: Image.asset(
                            'assets/design/images/mobile-signal-XVj.png',
                            width: 19.4*fem,
                            height: 10.67*fem,
                          ),
                        ),
                        Container(
                          // wifiNkh (105:4412)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.26*fem, 0.37*fem),
                          width: 17.43*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-GD7.png',
                            width: 17.43*fem,
                            height: 10.97*fem,
                          ),
                        ),
                        Container(
                          // batteryhHB (105:4404)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                          width: 24.5*fem,
                          height: 10.5*fem,
                          child: Image.asset(
                            'assets/design/images/battery-MAR.png',
                            width: 24.5*fem,
                            height: 10.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame427323201Qau (105:14386)
                    padding: EdgeInsets.fromLTRB(26*fem, 7.5*fem, 29*fem, 7.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // shop6yX (105:4425)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 298*fem, 0*fem),
                            child: Text(
                              'Shop',
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
                        Container(
                          // component1D2Z (105:14374)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 19*fem,
                          height: 19*fem,
                          child: Image.asset(
                            'assets/design/images/component-1-nyP.png',
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
              // rectangle39820ug5 (105:14392)
              width: 428*fem,
              height: 250*fem,
              child: Image.asset(
                'assets/design/images/rectangle-39820-TRj.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // autogroupppxu2kh (DoZB44ZW9HxdzenxoRPPxu)
              padding: EdgeInsets.fromLTRB(26*fem, 18*fem, 0*fem, 33*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame4273232419KX (324:9355)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 33*fem),
                    width: 376*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame427323239TLD (324:9353)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // nikeairmax270PUm (105:14393)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                child: Text(
                                  'Nike Air Max 270',
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
                                // frame4273232376e5 (324:9351)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // yoursupportsystem2Xj (113:14417)
                                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 1*fem),
                                      child: Text(
                                        'YOUR SUPPORT SYSTEM',
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 28*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.1725*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // legendaryairgetsliftedthelight (113:14408)
                                      child: Container(
                                        constraints: BoxConstraints (
                                          maxWidth: 376*fem,
                                        ),
                                        child: Text(
                                          'Legendary Air gets lifted. The lightweight and airy upper and super-low-cut collar make it the perfect go-to for warm-weather fun.',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Roboto',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.7142857143*ffem/fem,
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
                          // buttonMyK (113:14394)
                          margin: EdgeInsets.fromLTRB(128.5*fem, 0*fem, 128.5*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 48*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff272b30)),
                                color: Color(0xff1a1d1f),
                                borderRadius: BorderRadius.circular(30*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Shop',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6*ffem/fem,
                                    letterSpacing: -0.15*fem,
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
                  Container(
                    // frame427323205zFb (113:14441)
                    width: 412*fem,
                    height: 40*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                            // tabKHs (113:14433)
                            width: 51*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff272b30),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Text(
                                'All',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.6*ffem/fem,
                                  letterSpacing: -0.15*fem,
                                  color: Color(0xfffcfcfc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16*fem,
                        ),
                        Container(
                          // tabytD (113:14435)
                          width: 64*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffefefef),
                            borderRadius: BorderRadius.circular(8*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Men',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6*ffem/fem,
                                letterSpacing: -0.15*fem,
                                color: Color(0xff1a1d1f),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16*fem,
                        ),
                        Container(
                          // tabrx1 (113:14438)
                          width: 87*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffefefef),
                            borderRadius: BorderRadius.circular(8*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Women',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6*ffem/fem,
                                letterSpacing: -0.15*fem,
                                color: Color(0xff1a1d1f),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16*fem,
                        ),
                        TextButton(
                          // tabknV (113:14442)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 64*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffefefef),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Kids',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.6*ffem/fem,
                                  letterSpacing: -0.15*fem,
                                  color: Color(0xff1a1d1f),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16*fem,
                        ),
                        Container(
                          // tabp1f (113:14444)
                          width: 82*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffefefef),
                            borderRadius: BorderRadius.circular(8*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Jordan',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6*ffem/fem,
                                letterSpacing: -0.15*fem,
                                color: Color(0xff1a1d1f),
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
              // frame427323218u37 (113:14899)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 57*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouphgj3Cnu (DoZBt81kt4wXLsDiUNhgj3)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 48*fem),
                    width: double.infinity,
                    height: 331*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // itemKMj (113:14681)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 204*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Container(
                                  // frame427323214eQ1 (I113:14681;113:14610)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                  padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                                  width: double.infinity,
                                  height: 204*fem,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/design/images/rectangle-39824-bg-Pv1.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // favouritesLGq (I113:14681;113:14640)
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
                                            'assets/design/images/favourites-JHP.png',
                                            width: 36*fem,
                                            height: 36*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame427323217cEM (I113:14681;113:14814)
                                margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 49*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // frame427323216jpm (I113:14681;113:14791)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // bestsellerfiR (I113:14681;113:14586)
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
                                            // nameucm (I113:14681;113:14587)
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
                                            // lorempzd (I113:14681;113:14588)
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
                                            // frame427323212jbo (I113:14681;113:14589)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    // 59s (I113:14681;113:14590)
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
                                                  // z1w (I113:14681;113:14591)
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
                                      // frame427323213jVK (I113:14681;113:14592)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ellipse1404nV (I113:14681;113:14593)
                                            width: 16*fem,
                                            height: 16*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(8*fem),
                                              border: Border.all(color: Color(0xff8d8d8d)),
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5*fem,
                                          ),
                                          Container(
                                            // ellipse141yuT (I113:14681;113:14594)
                                            width: 16*fem,
                                            height: 16*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(8*fem),
                                              border: Border.all(color: Color(0xff8d8d8d)),
                                              color: Color(0xfff0b7fe),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5*fem,
                                          ),
                                          Container(
                                            // ellipse142gos (I113:14681;113:14595)
                                            width: 16*fem,
                                            height: 16*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(8*fem),
                                              border: Border.all(color: Color(0xff8d8d8d)),
                                              color: Color(0xffffffff),
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
                        TextButton(
                          // itemDJ1 (113:14654)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 204*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame427323214LdX (I113:14654;113:14610)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                  padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                                  width: double.infinity,
                                  height: 204*fem,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/design/images/rectangle-39824-bg-Kz9.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // favourites329 (I113:14654;113:14640)
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
                                            'assets/design/images/favourites-tYq.png',
                                            width: 36*fem,
                                            height: 36*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame427323217Jyf (I113:14654;113:14814)
                                  margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 54*fem, 0*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // frame427323216qCu (I113:14654;113:14791)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // autogroup9m8dZeh (DoZCQc8xk27NVyC8MX9m8D)
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
                                              // loremq6R (I113:14654;113:14588)
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
                                              // frame427323212MKf (I113:14654;113:14589)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // VAy (I113:14654;113:14590)
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
                                                  Text(
                                                    // ztR (I113:14654;113:14591)
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
                                        // frame427323213X7f (I113:14654;113:14592)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // ellipse1403bo (I113:14654;113:14593)
                                              width: 16*fem,
                                              height: 16*fem,
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(8*fem),
                                                border: Border.all(color: Color(0xff8d8d8d)),
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5*fem,
                                            ),
                                            Container(
                                              // ellipse141mGu (I113:14654;113:14594)
                                              width: 16*fem,
                                              height: 16*fem,
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(8*fem),
                                                border: Border.all(color: Color(0xff8d8d8d)),
                                                color: Color(0xffda0018),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5*fem,
                                            ),
                                            Container(
                                              // ellipse142gem (I113:14654;113:14595)
                                              width: 16*fem,
                                              height: 16*fem,
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(8*fem),
                                                border: Border.all(color: Color(0xff8d8d8d)),
                                                color: Color(0xffffffff),
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupv35jpFB (DoZCcMJPkirdABUdXEv35j)
                    width: double.infinity,
                    height: 306*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // itemAK3 (113:14840)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 204*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Container(
                                  // frame427323214HPf (I113:14840;113:14610)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                  padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                                  width: double.infinity,
                                  height: 204*fem,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/design/images/rectangle-39824-bg.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // favouritesBE9 (I113:14840;113:14640)
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
                                            'assets/design/images/favourites-oEy.png',
                                            width: 36*fem,
                                            height: 36*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame4273232173XF (I113:14840;113:14814)
                                margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 63*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // frame427323216yvh (I113:14840;113:14791)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogroupqhahJi5 (DoZCqquuj4XDH4cV5PQhAH)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                            width: double.infinity,
                                            height: 19*fem,
                                            child: Center(
                                              child: Text(
                                                'Nike Air Max 97',
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
                                            // loremzL1 (I113:14840;113:14588)
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
                                            // frame42732321279j (I113:14840;113:14589)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    // 2nV (I113:14840;113:14590)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                    child: Text(
                                                      '\$165',
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
                                                  // 9MK (I113:14840;113:14591)
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
                                      // frame427323213U8h (I113:14840;113:14592)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ellipse140oRs (I113:14840;113:14593)
                                            width: 16*fem,
                                            height: 16*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(8*fem),
                                              border: Border.all(color: Color(0xff8d8d8d)),
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5*fem,
                                          ),
                                          Container(
                                            // ellipse141uzh (I113:14840;113:14594)
                                            width: 16*fem,
                                            height: 16*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(8*fem),
                                              border: Border.all(color: Color(0xff8d8d8d)),
                                              color: Color(0xfff0b7fe),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5*fem,
                                          ),
                                          Container(
                                            // ellipse142SDw (I113:14840;113:14595)
                                            width: 16*fem,
                                            height: 16*fem,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(8*fem),
                                              border: Border.all(color: Color(0xff8d8d8d)),
                                              color: Color(0xffffffff),
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
                          // itemmn1 (113:14839)
                          width: 204*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Container(
                                  // frame427323214veu (I113:14839;113:14610)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                  padding: EdgeInsets.fromLTRB(156*fem, 12*fem, 12*fem, 12*fem),
                                  width: double.infinity,
                                  height: 204*fem,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/design/images/rectangle-39824-bg-WTT.png',
                                      ),
                                    ),
                                  ),
                                  child: Align(
                                    // favouritesc1w (I113:14839;113:14640)
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
                                            'assets/design/images/favourites-LbK.png',
                                            width: 36*fem,
                                            height: 36*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame427323217eUR (I113:14839;113:14814)
                                margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 69*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // frame427323216AxZ (I113:14839;113:14791)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // autogroupc1ah777 (DoZDJQyyFSmyYmA4Zxc1aH)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                            width: double.infinity,
                                            height: 19*fem,
                                            child: Center(
                                              child: Text(
                                                'Nike Air Presto',
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
                                            // loremP4d (I113:14839;113:14588)
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
                                            // frame427323212JSV (I113:14839;113:14589)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    // 39B (I113:14839;113:14590)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                                    child: Text(
                                                      '\$209',
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
                                                  // Ybj (I113:14839;113:14591)
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
                                      // frame427323213HpD (I113:14839;113:14592)
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
                ],
              ),
            ),
            Container(
              // frame427323207DC5 (113:14483)
              margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 30*fem, 30*fem),
              padding: EdgeInsets.fromLTRB(32*fem, 28*fem, 32*fem, 28*fem),
              width: double.infinity,
              height: 80*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff000000)),
                color: Color(0xff000000),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Container(
                // frame4273232066mf (113:14482)
                padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 3*fem, 0*fem),
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // component1ovy (113:14459)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 49*fem, 0*fem),
                        width: 20*fem,
                        height: 19.96*fem,
                        child: Image.asset(
                          'assets/design/images/component-1-433.png',
                          width: 20*fem,
                          height: 19.96*fem,
                        ),
                      ),
                    ),
                    Container(
                      // component17Rs (113:14460)
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
                            'assets/design/images/component-1-SbK.png',
                            width: 24*fem,
                            height: 24*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // component1nnu (113:14477)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51.49*fem, 0*fem),
                      width: 19.51*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/design/images/component-1.png',
                        width: 19.51*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // component1WU1 (113:14458)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-vJm.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // component1pzV (113:14457)
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/component-1-9zh.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // seperatorxau (105:4439)
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