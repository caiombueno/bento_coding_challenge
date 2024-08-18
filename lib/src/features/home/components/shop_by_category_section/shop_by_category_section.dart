import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'product_category_list_view.dart';

class ShopByCategorySection extends StatelessWidget {
  const ShopByCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shop by category'.hardcoded,
          style: context.theme.textTheme.titleLarge,
        ),
        gapH12,
        ProductCategoryListView(
            maxHeight: MediaQuery.of(context).size.height * 0.12),
      ],
    );
  }
}
