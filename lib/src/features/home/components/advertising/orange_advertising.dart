import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/features/home/components/advertising/advertising_container.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';

class OrangeAdvertising extends StatelessWidget {
  const OrangeAdvertising({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AdvertisingContainer(
      backgroundColor: const Color(0xFFFEF6EA),
      header: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top deal!".hardcoded,
            style: textTheme.labelLarge,
          ),
          Text(
            "FRESH ORANGE UP TO 20% OFF".hardcoded,
            style: textTheme.titleLarge,
            maxLines: 3,
          ),
        ],
      ),
      ctaButton: ElevatedButton(
        onPressed: () {},
        child: Text("Shop now".hardcoded),
      ),
      image: const _OrangeImage(),
    );
  }
}

class _OrangeImage extends StatelessWidget {
  const _OrangeImage();

  @override
  Widget build(BuildContext context) => Image.asset(orangePngAssetPath);
}
