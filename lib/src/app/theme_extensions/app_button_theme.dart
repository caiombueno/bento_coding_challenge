import 'package:flutter/material.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  const AppButtonTheme({
    this.productCardAddIconButton,
    this.categoryIconButton,
    this.appBarIconButton,
    this.addToCartElevatedButton,
  });
  final ButtonStyle? productCardAddIconButton;
  final ButtonStyle? categoryIconButton;
  final ButtonStyle? appBarIconButton;
  final ButtonStyle? addToCartElevatedButton;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    ButtonStyle? productCardAddIconButton,
    ButtonStyle? categoryIconButton,
    ButtonStyle? appBarIconButton,
    ButtonStyle? addToCartElevatedButton,
  }) =>
      AppButtonTheme(
        productCardAddIconButton:
            productCardAddIconButton ?? this.productCardAddIconButton,
        categoryIconButton: categoryIconButton ?? this.categoryIconButton,
        appBarIconButton: appBarIconButton ?? this.appBarIconButton,
        addToCartElevatedButton:
            addToCartElevatedButton ?? this.addToCartElevatedButton,
      );

  @override
  ThemeExtension<AppButtonTheme> lerp(
    covariant ThemeExtension<AppButtonTheme>? other,
    double t,
  ) {
    if (other is! AppButtonTheme) return this;

    return AppButtonTheme(
      productCardAddIconButton: ButtonStyle.lerp(
        productCardAddIconButton,
        other.productCardAddIconButton,
        t,
      ),
      categoryIconButton: ButtonStyle.lerp(
        categoryIconButton,
        other.categoryIconButton,
        t,
      ),
      appBarIconButton: ButtonStyle.lerp(
        appBarIconButton,
        other.appBarIconButton,
        t,
      ),
      addToCartElevatedButton: ButtonStyle.lerp(
        addToCartElevatedButton,
        other.addToCartElevatedButton,
        t,
      ),
    );
  }
}
