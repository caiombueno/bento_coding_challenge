import 'package:bento_coding_challenge/src/app/theme_extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

extension ThemeExtensionUtil on ThemeData {
  AppTextTheme? get appTextTheme => extension<AppTextTheme>();

  AppButtonTheme? get appButtonTheme => extension<AppButtonTheme>();
}
