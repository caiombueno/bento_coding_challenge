import 'package:flutter/material.dart';

class SafeAreaScaffold extends StatelessWidget {
  const SafeAreaScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  });
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBar = this.bottomNavigationBar;
    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: body),
      bottomNavigationBar: (bottomNavigationBar != null)
          ? SafeArea(child: bottomNavigationBar)
          : null,
    );
  }
}
