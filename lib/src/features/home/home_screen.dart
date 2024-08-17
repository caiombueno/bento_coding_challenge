import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SafeArea(
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
