import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/advertising/advertising.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // isolate [BlocProvider]s for testing
    return BlocProvider<DailySpecialProductsCubit>(
      create: (_) => DailySpecialProductsCubit()..getProductSummaryList(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = EdgeInsets.symmetric(horizontal: Sizes.p16);
    return const SafeArea(
      child: SingleChildScrollView(
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
            gapH24,
            AdvertisingPageView(
              padding: horizontalPadding,
              advertisings: [
                AvocadoAdvertising(),
                OrangeAdvertising(),
                AvocadoAdvertising(),
              ],
            ),
            gapH24,
            Padding(
              padding: EdgeInsets.only(left: Sizes.p16),
              child: ShopByCategorySection(),
            ),
            gapH24,
            Padding(padding: horizontalPadding, child: DailySpecialSection()),
          ],
        ),
      ),
    );
  }
}
