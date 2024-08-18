import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'theme_extensions/theme_extensions.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff10365A);
    const secondaryColor = Color(0xFF56E39C);
    final theme = ThemeData(
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        background: Colors.white,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: secondaryColor,
          textStyle: const TextStyle(
            fontSize: Sizes.p16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: secondaryColor,
          textStyle: const TextStyle(
            fontSize: Sizes.p16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textTheme: TextTheme(
        titleSmall: const TextStyle(
          color: Colors.black,
          fontSize: Sizes.p16,
          overflow: TextOverflow.ellipsis,
        ),
        titleMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          color: primaryColor,
          fontSize: Sizes.p16,
        ),
        titleLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          color: primaryColor,
          fontSize: Sizes.p20,
          overflow: TextOverflow.ellipsis,
        ),
        labelLarge: TextStyle(
          color: Colors.grey[700],
          fontWeight: FontWeight.normal,
          overflow: TextOverflow.ellipsis,
        ),
        labelMedium: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: Sizes.p12,
            overflow: TextOverflow.ellipsis),
        // labelMedium:
      ),
      extensions: <ThemeExtension>[
        const AppTextTheme(
          productCardName: TextStyle(
            color: Colors.black,
            fontSize: Sizes.p16,
            overflow: TextOverflow.ellipsis,
          ),
          productStrikethroughFullPrice: TextStyle(
            fontSize: Sizes.p12,
            decoration: TextDecoration.lineThrough,
            decorationColor: primaryColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        AppButtonTheme(
          productCardAddIconButton: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: secondaryColor,
            foregroundColor: primaryColor,
            padding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.p12),
                bottomRight: Radius.circular(Sizes.p12),
              ),
            ),
          ),
          categoryIconButton: IconButton.styleFrom(
            backgroundColor: const Color(0xFFE9E9E9),
            foregroundColor: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
            ),
          ),
        ),
      ],
    );

    return MaterialApp.router(routerConfig: router, theme: theme);
  }
}
