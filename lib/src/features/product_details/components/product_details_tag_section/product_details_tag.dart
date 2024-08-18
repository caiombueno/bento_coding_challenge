import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsTag extends StatelessWidget {
  const ProductDetailsTag({super.key, required this.tag});

  final ProductTag tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _TagIcon(
          svgIconAssetPath: tag.svgIconAssetPath,
          colorHex: tag.colorHex,
        ),
        gapH4,
        Text(tag.label),
      ],
    );
  }
}

class _TagIcon extends StatelessWidget {
  const _TagIcon({
    required this.svgIconAssetPath,
    required this.colorHex,
  });

  final String svgIconAssetPath;
  final int colorHex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(colorHex),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p4),
        child: SvgPicture.asset(
          svgIconAssetPath,
          width: Sizes.p24,
          height: Sizes.p24,
        ),
      ),
    );
  }
}
