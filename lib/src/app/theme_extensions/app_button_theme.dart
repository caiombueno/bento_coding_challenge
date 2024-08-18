import 'package:flutter/material.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  const AppButtonTheme({
    this.productCardAddIconButton,
    this.categoryIconButton,
  });
  final ButtonStyle? productCardAddIconButton;
  final ButtonStyle? categoryIconButton;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    ButtonStyle? productCardAddIconButton,
    ButtonStyle? categoryIconButton,
  }) =>
      AppButtonTheme(
        productCardAddIconButton:
            productCardAddIconButton ?? this.productCardAddIconButton,
        categoryIconButton: categoryIconButton ?? this.categoryIconButton,
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
    );
  }
}
