import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProductRatingIndicator extends StatelessWidget {
  const ProductRatingIndicator({super.key, required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: Sizes.p20,
        ),
        Text(rating.toStringAsFixed(1)),
      ],
    );
  }
}
