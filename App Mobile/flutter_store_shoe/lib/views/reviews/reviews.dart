import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_shoe/models/reviews.dart';
import 'package:flutter_store_shoe/views/components/my_button.dart';
import 'package:flutter_store_shoe/views/reviews/review_widget.dart';

class ReviewsView extends StatefulWidget {
  const ReviewsView({Key? key}) : super(key: key);

  @override
  State<ReviewsView> createState() => _ReviewsState();
}

class _ReviewsState extends State<ReviewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("5 Reviews")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.w),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsetsDirectional.only(end: 12),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        color: const Color(0xFF40BFFF).withOpacity(.1),
                      ),
                      child: Center(
                        child: Text(
                          " All Reviews",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                color: const Color(0xFF40BFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsetsDirectional.only(end: 12),
                          child: Container(
                            height: 50,
                            width: 62,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                  width: 2, color: const Color(0xFFE2E7F8)),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star_rate_rounded,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "${index + 1}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35.w,
              ),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemBuilder: ((context, index) => ReviewSection(
                      name: reviewsList[index].name,
                      date: reviewsList[index].date,
                      stars: reviewsList[index].stars,
                      text: reviewsList[index].text,
                      image: reviewsList[index].image,
                    )),
                separatorBuilder: ((context, index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFFE2E7F8),
                      ),
                    )),
                itemCount: reviewsList.length,
              ),
              const SizedBox(height: 20),
              MyButton(
                text: "Write Review",
                radius: 50,
                customColor: Colors.white,
                textColor: Colors.black,
                onTap: () {},
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
