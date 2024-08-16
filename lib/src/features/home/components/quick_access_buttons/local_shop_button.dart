import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:bento_coding_challenge/src/widgets/quick_access_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocalShopButton extends StatelessWidget {
  const LocalShopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return QuickAccessButton(
      label: "LOCAL SHOP".hardcoded,
      image: const _LocalShopImage(),
      onTap: () {},
    );
  }
}

class _LocalShopImage extends StatelessWidget {
  const _LocalShopImage();

  @override
  Widget build(BuildContext context) => SvgPicture.asset(localShopSvgAssetPath);
}
