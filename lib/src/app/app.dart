import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/routing/app_router.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
        textTheme: TextTheme(
      titleSmall: const TextStyle(
        color: Colors.black,
        fontSize: Sizes.p16,
      ),
      labelLarge: TextStyle(
        color: Colors.grey[700],
        fontWeight: FontWeight.normal,
      ),
      // labelMedium:
    ));

    return MaterialApp.router(
      routerConfig: router,
      theme: theme,
    );
  }
}
