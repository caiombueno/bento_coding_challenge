import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/routing/app_router.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      primaryColor: const Color(0xff10365A),
      colorScheme: const ColorScheme.light(
        primary: Color(0xff10365A),
        secondary: Color(0xFF56E39C),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff10365A),
          foregroundColor: const Color(0xFF56E39C),
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
        ),
        titleMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff10365A),
          fontSize: Sizes.p16,
        ),
        titleLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff10365A),
          fontSize: Sizes.p20,
        ),
        labelLarge: TextStyle(
          color: Colors.grey[700],
          fontWeight: FontWeight.normal,
        ),
        // labelMedium:
      ),
    );

    return MaterialApp.router(routerConfig: router, theme: theme);
  }
}
