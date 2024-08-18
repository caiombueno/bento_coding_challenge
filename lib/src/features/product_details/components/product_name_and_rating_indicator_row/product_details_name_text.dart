import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:flutter/material.dart';

class ProductDetailsNameText extends StatelessWidget {
  const ProductDetailsNameText({super.key, required this.productName});
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Text(
      productName,
      style: context.theme.textTheme.titleLarge
          ?.copyWith(fontSize: Sizes.p24, overflow: TextOverflow.ellipsis),
      maxLines: 2,
    );
  }
}
