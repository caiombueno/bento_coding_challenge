import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/features/home/components/advertising/advertising_container.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';

/// An example of [AdvertisingContainer] with an avocado image.
class AvocadoAdvertising extends StatelessWidget {
  const AvocadoAdvertising({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AdvertisingContainer(
      backgroundColor: const Color(0xFFF3F5DE),
      header: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top deal!".hardcoded,
            style: textTheme.labelLarge,
          ),
          Text(
            "FRESH AVOCADO UP TO 15% OFF".hardcoded,
            style: textTheme.titleLarge,
            maxLines: 3,
          ),
        ],
      ),
      ctaButton: ElevatedButton(
        onPressed: () {},
        child: Text("Shop now".hardcoded),
      ),
      image: const _AvocadoImage(),
    );
  }
}

class _AvocadoImage extends StatelessWidget {
  const _AvocadoImage();

  @override
  Widget build(BuildContext context) => Image.asset(avocadoPngAssetPath);
}
