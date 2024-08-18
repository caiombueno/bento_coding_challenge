import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:flutter/material.dart';

import 'product_card/product_card.dart';

class DailySpecialProductsGridView extends StatelessWidget {
  const DailySpecialProductsGridView(
      {super.key, required this.productSummaryList});
  final List<ProductSummary> productSummaryList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.25,
        mainAxisSpacing: Sizes.p12,
        crossAxisSpacing: Sizes.p12,
      ),
      itemBuilder: (_, index) {
        final productSummary = productSummaryList[index];
        return ProductCard(product: productSummary);
      },
      itemCount: productSummaryList.length,
    );
  }
}
