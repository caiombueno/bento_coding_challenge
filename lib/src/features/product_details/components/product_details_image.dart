import 'package:flutter/material.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({super.key, this.productImageAssetPath});
  final String? productImageAssetPath;

  @override
  Widget build(BuildContext context) {
    final productImageAssetPath = this.productImageAssetPath;
    return (productImageAssetPath != null)
        ? Image.asset(productImageAssetPath)
        : const SizedBox();
  }
}
