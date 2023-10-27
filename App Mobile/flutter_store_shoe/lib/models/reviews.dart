import 'package:flutter_store_shoe/utils/const.dart';

class ReviewModel {
  final int stars;
  final String name;
  final String text;
  final String image;
  final String date;

  ReviewModel({
    required this.stars,
    required this.name,
    required this.text,
    required this.image,
    required this.date,
  });
}

List<ReviewModel> reviewsList = [
  ReviewModel(
    stars: 4,
    name: "James Lawson",
    text:
        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
    image: profilePicture3,
    date: "December 10, 2021",
  ),
  ReviewModel(
    stars: 4,
    name: "Laura Octavian",
    text:
        "This is really amazing product, i like the design of product, I hope can buy it again!",
    image: profilePicture1,
    date: "December 07, 2021",
  ),
  ReviewModel(
    stars: 4,
    name: "Jhonson Bridge",
    text:
        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
    image: profilePicture2,
    date: "December 06, 2021",
  ),
  ReviewModel(
    stars: 4,
    name: "Griffin Rod",
    text:
        "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small",
    image: profilePicture4,
    date: "December 03, 2021",
  ),
];
