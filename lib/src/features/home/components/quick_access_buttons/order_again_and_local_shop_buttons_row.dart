import 'package:bento_coding_challenge/src/features/home/components/quick_access_buttons/local_shop_button.dart';
import 'package:bento_coding_challenge/src/features/home/components/quick_access_buttons/order_again_button.dart';
import 'package:flutter/material.dart';

class OrderAgainAndLocalShopButtonsRow extends StatelessWidget {
  const OrderAgainAndLocalShopButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final buttonMaxWidth = constraints.maxWidth * 0.6;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          OrderAgainButton(maxWidth: buttonMaxWidth),
          LocalShopButton(maxWidth: buttonMaxWidth),
        ],
      );
    });
  }
}
