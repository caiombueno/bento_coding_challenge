import 'package:flutter/material.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({super.key, this.productImageAssetPath});
  final String? productImageAssetPath;

  @override
  Widget build(BuildContext context) {
    final productImageAssetPath = this.productImageAssetPath;
    return (productImageAssetPath != null)
        ? Hero(
            tag: productImageAssetPath,
            child: Image.asset(productImageAssetPath),
          )
        : const SizedBox();
  }
}
