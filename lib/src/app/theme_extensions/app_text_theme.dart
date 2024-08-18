import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  const AppTextTheme({
    this.productCardName,
    this.productStrikethroughFullPrice,
  });
  final TextStyle? productCardName;
  final TextStyle? productStrikethroughFullPrice;
  // final TextStyle? productDetails

  @override
  ThemeExtension<AppTextTheme> copyWith({
    TextStyle? productCardName,
    TextStyle? productStrikethroughFullPrice,
  }) =>
      AppTextTheme(
        productCardName: productCardName ?? this.productCardName,
        productStrikethroughFullPrice:
            productStrikethroughFullPrice ?? this.productStrikethroughFullPrice,
      );

  @override
  ThemeExtension<AppTextTheme> lerp(
      covariant ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) return this;

    return AppTextTheme(
      productCardName: TextStyle.lerp(
        productCardName,
        other.productCardName,
        t,
      ),
      productStrikethroughFullPrice: TextStyle.lerp(
        productStrikethroughFullPrice,
        other.productStrikethroughFullPrice,
        t,
      ),
    );
  }
}
