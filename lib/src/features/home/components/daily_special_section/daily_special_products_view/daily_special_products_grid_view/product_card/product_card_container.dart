import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:bento_coding_challenge/src/routing/app_router.dart';
import 'package:bento_coding_challenge/src/routing/routing.dart';
import 'package:flutter/material.dart';

class ProductCardContainer extends StatelessWidget {
  const ProductCardContainer({
    super.key,
    this.child,
    this.backgroundColorHexValue,
    required this.productId,
  });
  final Widget? child;
  final int? backgroundColorHexValue;
  final ProductId productId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ProductDetailsRoute(productId: productId).push(context),
      child: AspectRatio(
        aspectRatio: 1 / 1.25,
        child: Container(
          decoration: BoxDecoration(
            color: Color(backgroundColorHexValue ?? 0xFFE9E9E9),
            borderRadius: BorderRadius.circular(Sizes.p16),
          ),
          child: child,
        ),
      ),
    );
  }
}
