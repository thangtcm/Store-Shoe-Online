import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/views/utils/size_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String title = "tên sản phẩm";
  final _pageController = PageController();

  int currentPage = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
        print(currentPage);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const InkWell(
            child: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        actions: const [
          InkWell(child: Icon(Icons.badge_outlined, color: Colors.black)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            //  width: 200,
            color: Colors.grey.shade300,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                    height: 280,
                    child: ListView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 200.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                "https://bizweb.dktcdn.net/100/226/755/products/0021480-footjoy-mens-pro-sl-2022-golf-shoes-53075.png?v=1651039543623",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                "https://skygolf.vn/storage/products/YbHtYnCS7wJXG4z8d9EXYujqq7q6C2o0ilswOxhR.webp",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                "https://skygolf.vn/storage/products/YbHtYnCS7wJXG4z8d9EXYujqq7q6C2o0ilswOxhR.webp",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                "https://skygolf.vn/storage/products/YbHtYnCS7wJXG4z8d9EXYujqq7q6C2o0ilswOxhR.webp",
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 5),
                          alignment: Alignment.centerLeft,
                          height: 1,
                          width: 20,
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            color: currentPage == index
                                ? Colors.black
                                : Colors.black12,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Container(height: 140, width: 140, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Container(height: 140, width: 140, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Container(height: 140, width: 140, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Container(height: 140, width: 140, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Container(height: 140, width: 140, color: Colors.black),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              textAlign: TextAlign.justify,
              softWrap: true,
              text: TextSpan(
                text: 'Men\'s Shoes\n\n',
                style: GoogleFonts.beVietnamPro(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Nike Air Max 270\n\n',
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " \$249\n\n",
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Nike's first lifestyle Air Max brings you style, comfort and big attitude in the Nike Air Max 270. The design draws inspiration from Air Max icons, showcasing Nike's greatest innovation with its large window and fresh array of colours.",
                    style: GoogleFonts.beVietnamPro(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),

                  // TextSpan(text: ' world!'),
                ],
              ),
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, bottom: 8, right: 40, left: 40),
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey, width: 1.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Size EU",
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const Icon(Icons.arrow_drop_down_outlined)
                  ],
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, bottom: 8, right: 40, left: 40),
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add to Bag",
                      style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, bottom: 8, right: 40, left: 40),
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey, width: 1.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Favourite",
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const Icon(Icons.favorite_border_outlined)
                  ],
                )),
          ),
          Column(
            children: [
              const Divider(
                thickness: 1,
                endIndent: 60,
                indent: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Review",
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                endIndent: 60,
                indent: 60,
              ),
            ],
          ),

          //
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("You Might Also Like",
                      style: GoogleFonts.beVietnamPro(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 320,
                    //  width: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                color: Colors.black,
                              ),
                              RichText(
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                text: TextSpan(
                                  text: 'Nike Air Debut\n',
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Women\'s shose\n',
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          height: 1.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    TextSpan(
                                      text: " \$249\n",
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),

                                    // TextSpan(text: ' world!'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                color: Colors.black,
                              ),
                              RichText(
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                text: TextSpan(
                                  text: 'Nike Air Debut\n',
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Women\'s shose\n',
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          height: 1.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    TextSpan(
                                      text: " \$249\n",
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),

                                    // TextSpan(text: ' world!'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                color: Colors.black,
                              ),
                              RichText(
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                text: TextSpan(
                                  text: 'Nike Air Debut\n',
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Women\'s shose\n',
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          height: 1.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    TextSpan(
                                      text: " \$249\n",
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),

                                    // TextSpan(text: ' world!'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                color: Colors.black,
                              ),
                              RichText(
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                text: TextSpan(
                                  text: 'Nike Air Debut\n',
                                  style: GoogleFonts.beVietnamPro(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Women\'s shose\n',
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          height: 1.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    TextSpan(
                                      text: " \$249\n",
                                      style: GoogleFonts.beVietnamPro(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),

                                    // TextSpan(text: ' world!'),
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
          ),
        ],
      ),
    );
  }
}
