import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/components.dart';
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
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Sizes.p16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DeliveryHeader(),
              gapH32,
              OrderAgainAndLocalShopButtonsRow(),
              gapH32,
              AdvertisingPageView(
                advertisings: [
                  AvocadoAdvertising(),
                  AvocadoAdvertising(),
                  AvocadoAdvertising(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
