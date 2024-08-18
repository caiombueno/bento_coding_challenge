import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProductRatingIndicator extends StatelessWidget {
  const ProductRatingIndicator({
    super.key,
    required this.rating,
    this.starColor = const Color(0xFFFDD835),
    this.textStyle,
  });
  final double rating;
  final Color starColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: starColor, size: Sizes.p20),
        Text(
          rating.toStringAsFixed(1),
          overflow: TextOverflow.ellipsis,
          style: textStyle,
        ),
      ],
    );
  }
}
