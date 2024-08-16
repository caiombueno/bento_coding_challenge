import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/quick_access_buttons/local_shop_button.dart';
import 'package:bento_coding_challenge/src/features/home/components/quick_access_buttons/order_again_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderAgainAndLocalShopButtonsRow extends StatelessWidget {
  const OrderAgainAndLocalShopButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: OrderAgainButton()),
          gapW12,
          Flexible(child: LocalShopButton()),
        ],
      );
    });
  }
}
