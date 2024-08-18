import 'package:bento_coding_challenge/src/features/product_details/components/product_name_and_rating_indicator_row/product_details_name_text.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/product_name_and_rating_indicator_row/product_details_rating_indicator.dart';
import 'package:bento_coding_challenge/src/features/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductNameAndRatingIndicatorRow extends StatelessWidget {
  const ProductNameAndRatingIndicatorRow({
    super.key,
    required this.productName,
    required this.productRating,
  });

  final String? productName;
  final double? productRating;

  @override
  Widget build(BuildContext context) {
    final productName = productDetails.productName;
    final productRating = productDetails.overallRating;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 8,
          child: (productName != null)
              ? ProductDetailsNameText(productName: productName)
              : const SizedBox(),
        ),
        if (productRating != null)
          Flexible(
            flex: 2,
            child: ProductDetailsRatingIndicator(
              productRating: productRating,
            ),
          )
      ],
    );
  }
}
