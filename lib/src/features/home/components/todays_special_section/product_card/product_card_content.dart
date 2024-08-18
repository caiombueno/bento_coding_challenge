import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/product_card/product_info/product_info.dart';
import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/product_card/product_rating_indicator.dart';
import 'package:flutter/material.dart';

class ProductCardContent extends StatelessWidget {
  const ProductCardContent({
    super.key,
    this.productName,
    required this.fullPrice,
    this.salePrice,
    this.rating,
    this.productImageAssetPath,
  });
  final String? productName;
  final double fullPrice;
  final double? salePrice;
  final double? rating;
  final String? productImageAssetPath;

  @override
  Widget build(BuildContext context) {
    final imageAssetPath = productImageAssetPath;
    final name = productName ?? '';
    final rating = this.rating;

    return Padding(
      padding: const EdgeInsets.all(Sizes.p12),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (imageAssetPath != null)
                Flexible(
                  flex: 4,
                  child:
                      Center(child: _ProductImage(assetPath: imageAssetPath)),
                ),
              gapH12,
              Flexible(
                flex: 3,
                child: ProductInfo(
                  fullPrice: fullPrice,
                  salePrice: salePrice,
                  productName: name,
                ),
              ),
            ],
          ),
          if (rating != null)
            Align(
              alignment: Alignment.topRight,
              child: ProductRatingIndicator(rating: rating),
            )
        ],
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({required this.assetPath});
  // on a real app this would be a network image
  final String assetPath;

  @override
  Widget build(BuildContext context) => Image.asset(assetPath);
}
