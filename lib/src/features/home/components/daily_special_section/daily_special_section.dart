import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'daily_special_products_view/daily_special_products_view.dart';

class DailySpecialSection extends StatelessWidget {
  const DailySpecialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _DailySpecialSectionHeader(),
        gapH12,
        DailySpecialProductsView()
      ],
    );
  }
}

class _DailySpecialSectionHeader extends StatelessWidget {
  const _DailySpecialSectionHeader();

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
