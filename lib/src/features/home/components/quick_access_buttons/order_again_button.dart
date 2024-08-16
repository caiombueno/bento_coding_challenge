import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:bento_coding_challenge/src/widgets/quick_access_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderAgainButton extends StatelessWidget {
  const OrderAgainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QuickAccessButton(
      label: "ORDER AGAIN".hardcoded,
      image: const _VegetablesImage(),
      onTap: () {},
    );
  }
}

class _VegetablesImage extends StatelessWidget {
  const _VegetablesImage();

  @override
  Widget build(BuildContext context) => SvgPicture.asset(groceriesSvgAssetPath);
}
