import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppAnimatedLoadingIndicator extends StatelessWidget {
  const AppAnimatedLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      fruitsLoadingLottieAssetPath,
      fit: BoxFit.cover,
    );
  }
}
