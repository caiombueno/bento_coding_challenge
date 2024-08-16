import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeliveryHeader extends StatelessWidget {
  const DeliveryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _DeliveryLocationWidget(),
        _ProfilePictureImage(),
      ],
    );
  }
}

class _ProfilePictureImage extends StatelessWidget {
  const _ProfilePictureImage();

  @override
  Widget build(BuildContext context) =>
      Image.asset(profilePictureImageAssetPath, width: Sizes.p32);
}

class _DeliveryLocationWidget extends StatelessWidget {
  const _DeliveryLocationWidget();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Delivery'.hardcoded, style: textTheme.titleSmall),
        gapH4,
        Row(
          children: [
            Text('Bacangan, Sambit'.hardcoded, style: textTheme.labelLarge),
            gapW8,
            const Icon(
              FontAwesomeIcons.chevronDown,
              size: Sizes.p12,
            )
          ],
        ),
      ],
    );
  }
}
