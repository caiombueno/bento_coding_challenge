import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/theme_extension_util.dart';
import 'package:bento_coding_challenge/src/widgets/safe_area_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScaffold extends StatelessWidget {
  const ProductDetailsScaffold({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });
  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    final appBarIconButtonStyle =
        context.theme.appButtonTheme?.appBarIconButton;
    return SafeAreaScaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          style: appBarIconButtonStyle,
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded),
            style: appBarIconButtonStyle,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(Sizes.p16), child: body),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
