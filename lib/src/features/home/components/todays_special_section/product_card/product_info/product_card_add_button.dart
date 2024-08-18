import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/theme_extension_util.dart';
import 'package:flutter/material.dart';

class ProductCardAddButton extends StatelessWidget {
  const ProductCardAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.add),
      style: context.theme.appButtonTheme?.productCardAddIconButton,
    );
  }
}
