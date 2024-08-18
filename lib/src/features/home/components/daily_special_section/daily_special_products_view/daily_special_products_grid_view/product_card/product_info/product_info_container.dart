import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProductInfoContainer extends StatelessWidget {
  const ProductInfoContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      child: child,
    );
  }
}
