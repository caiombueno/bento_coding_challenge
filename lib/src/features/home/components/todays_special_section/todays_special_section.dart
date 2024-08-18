import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/product_card/product_card.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';

const orange = ProductSummary(
  productId: '1',
  productName: 'Orange',
  fullPrice: 4,
  discountPercentage: 0.1,
  productImageAssetPath: orangePngAssetPath,
  overallRating: 4.5,
  productColorHex: 0xFFFFF3DE,
);

const cabbage = ProductSummary(
  productId: '2',
  productName: 'Cabbage',
  fullPrice: 8,
  discountPercentage: 0.2,
  productImageAssetPath: cabbagePngAssetPath,
  overallRating: 5,
  productColorHex: 0xFFEE7FFDF,
);

class TodaysSpecialSection extends StatelessWidget {
  const TodaysSpecialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _TodaysSpecialSectionHeader(),
        gapH12,
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: Sizes.p12,
          crossAxisSpacing: Sizes.p12,
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.25,
          children: const [
            ProductCard(product: orange),
            ProductCard(product: cabbage),
            ProductCard(product: orange),
            ProductCard(product: orange),
          ],
        ),
      ],
    );
  }
}

class _TodaysSpecialSectionHeader extends StatelessWidget {
  const _TodaysSpecialSectionHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Today\'s Special'.hardcoded,
          style: context.theme.textTheme.titleLarge,
        ),
        TextButton(
          onPressed: () {},
          child: Text('See all'.hardcoded),
        ),
      ],
    );
  }
}
