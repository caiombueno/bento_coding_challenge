import 'package:bento_coding_challenge/src/widgets/product_rating_indicator.dart';
import 'package:flutter/material.dart';

class ProductDetailsRatingIndicator extends StatelessWidget {
  const ProductDetailsRatingIndicator({super.key, required this.productRating});

  final double productRating;

  @override
  Widget build(BuildContext context) {
    return ProductRatingIndicator(
      rating: productRating,
      starColor: const Color(0xFFFEC124),
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
    );
  }
}
