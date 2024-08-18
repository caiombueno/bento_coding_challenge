import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/product_card/product_info/product_info_container.dart';
import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/product_card/product_info/product_info_content.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.productName,
    required this.fullPrice,
    required this.salePrice,
  });
  final String productName;
  final double fullPrice;
  final double? salePrice;

  @override
  Widget build(BuildContext context) => ProductInfoContainer(
        child: ProductInfoContent(
          productName: productName,
          fullPrice: fullPrice,
          salePrice: salePrice,
        ),
      );
}
