import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/features/home/components/quick_access_buttons/constrained_quick_access_button.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderAgainButton extends StatelessWidget {
  const OrderAgainButton({super.key, required this.maxWidth});
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return ConstrainedQuickAccessButton(
      label: "ORDER AGAIN".hardcoded,
      image: const _VegetablesImage(),
      onTap: () {},
      maxWidth: maxWidth,
    );
  }
}

class _VegetablesImage extends StatelessWidget {
  const _VegetablesImage();

  @override
  Widget build(BuildContext context) {
    const size = Sizes.p64;
    return SvgPicture.asset(
      groceriesSvgAssetPath,
      width: size,
      height: size,
    );
  }
}
