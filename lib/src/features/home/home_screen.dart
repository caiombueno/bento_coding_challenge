import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/components.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'components/advertising/advertising.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = EdgeInsets.all(Sizes.p16);
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: horizontalPadding,
              child: Column(
                children: [
                  DeliveryHeader(),
                  gapH32,
                  OrderAgainAndLocalShopButtonsRow(),
                ],
              ),
            ),
            AdvertisingPageView(
              padding: horizontalPadding,
              advertisings: [
                AvocadoAdvertising(),
                AvocadoAdvertising(),
                AvocadoAdvertising(),
              ],
            ),
            gapH24,
            Padding(
              padding: EdgeInsets.only(left: Sizes.p16),
              child: _ShopByCategorySection(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShopByCategorySection extends StatelessWidget {
  const _ShopByCategorySection();

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
