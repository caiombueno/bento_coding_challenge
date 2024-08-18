import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';

class ProductDetailsShopText extends StatelessWidget {
  const ProductDetailsShopText({super.key, required this.shopName});
  final String shopName;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Shop: $shopName'.hardcoded,
      style: context.theme.textTheme.labelLarge,
    );
  }
}
