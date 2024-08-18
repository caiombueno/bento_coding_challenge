import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/daily_special_products_view/daily_special_products_grid_view/product_card/product_card_container.dart';
import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/daily_special_products_view/daily_special_products_grid_view/product_card/product_card_content.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductSummary product;

  @override
  Widget build(BuildContext context) => ProductCardContainer(
        productId: product.productId,
        backgroundColorHexValue: product.productColorHex,
        child: ProductCardContent(
          fullPrice: product.fullPrice,
          salePrice: product.salePrice,
          productName: product.productName,
          rating: product.overallRating,
          productImageAssetPath: product.productImageAssetPath,
        ),
      );
}
