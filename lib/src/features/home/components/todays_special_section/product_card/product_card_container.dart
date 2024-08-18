import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProductCardContainer extends StatelessWidget {
  const ProductCardContainer({
    super.key,
    this.child,
    this.backgroundColorHexValue,
  });
  final Widget? child;
  final int? backgroundColorHexValue;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.25,
      child: Container(
        decoration: BoxDecoration(
          color: Color(backgroundColorHexValue ?? 0xFFE9E9E9),
          borderRadius: BorderRadius.circular(Sizes.p16),
        ),
        child: child,
      ),
    );
  }
}
