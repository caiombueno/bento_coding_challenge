import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/product_details_bottom_sheet/add_to_cart_button.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/product_details_bottom_sheet/product_details_price_section.dart';
import 'package:flutter/material.dart';

class ProductDetailsBottomSheet extends StatelessWidget {
  const ProductDetailsBottomSheet({
    super.key,
    required this.fullPrice,
    this.salePrice,
  });
  final double fullPrice;
  final double? salePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ProductDetailsPriceSection(
              fullPrice: fullPrice,
              salePrice: salePrice,
            ),
          ),
          const Expanded(child: AddToCartButton()),
        ],
      ),
    );
  }
}
