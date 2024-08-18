import 'package:bento_coding_challenge/src/app/app.dart';
import 'package:flutter/material.dart';

extension ThemeExtensionUtil on ThemeData {
  AppTextTheme? get appTextTheme => extension<AppTextTheme>();

  AppButtonTheme? get appButtonTheme => extension<AppButtonTheme>();
}
