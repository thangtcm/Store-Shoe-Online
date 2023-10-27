import 'package:flutter/material.dart';
import 'package:flutter_store_shoe/views/widget/product_rate.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    Key? key,
    required this.date,
    required this.image,
    required this.name,
    required this.stars,
    required this.text,
  }) : super(key: key);
  final int stars;
  final String name;
  final String text;
  final String image;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 20),
                ),
                const ProductRate(),
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
          maxLines: 5,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Text(
          date,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
