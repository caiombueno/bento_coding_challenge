import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';

class ProductDetailsDescriptionSection extends StatelessWidget {
  const ProductDetailsDescriptionSection(
      {super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Details'.hardcoded, style: context.theme.textTheme.titleLarge),
        gapH8,
        Text(
          description,
          // overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
