// ignore_for_file: must_be_immutable

import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/models/ProductInfoVM.dart';
import 'package:flutter_store_shoe/views/widget/product_slider.dart';
import 'package:flutter_store_shoe/views/widget/sale_product.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailView extends StatefulWidget {
  Product product;
  ProductDetailView({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetailView> {
  final _controller = CarouselController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
          backgroundColor: Colors.white,
          title: Text(
            widget.product.productName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  FadeInDown(
                    child: ProductSlider(
                      items: widget.product.details,
                      activeIndex: currentPage,
                      controller: _controller,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.product.details!.length,
                  itemBuilder: (ctx, i) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _controller.animateToPage(i);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 80,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1.5,
                            color: currentPage == i
                                ? Colors.grey
                                : Colors.transparent,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: currentPage == i
                              ? Hero(
                                  tag: widget.product.details![0],
                                  child: Image.network(
                                    widget.product.details![i].urlImage!,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Image.network(
                                  widget.product.details![i].urlImage!,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    );
                  }),
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
                      text: '${widget.product.productName}\n\n',
                      style: GoogleFonts.beVietnamPro(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          " \$${widget.product.details![currentPage].price}\n\n",
                      style: GoogleFonts.beVietnamPro(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: widget.product.productDescription,
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
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, right: 40, left: 40),
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
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, right: 40, left: 40),
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
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, right: 40, left: 40),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You Might Also Like",
                        style: GoogleFonts.beVietnamPro(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SaleSection(
                      onPress: () {
                        Navigator.pop(context, const ());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
