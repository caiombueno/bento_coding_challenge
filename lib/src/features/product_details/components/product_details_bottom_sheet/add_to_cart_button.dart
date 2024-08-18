import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:bento_coding_challenge/src/utils/theme_extension_util.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: context.theme.appButtonTheme?.addToCartElevatedButton,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.p16,
        ),
        child: Text(
          'Add to cart'.hardcoded,
          maxLines: 1,
        ),
      ),
    );
  }
}
