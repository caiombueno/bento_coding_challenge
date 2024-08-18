import 'package:flutter/material.dart';

class SafeAreaScaffold extends StatelessWidget {
  const SafeAreaScaffold({super.key, required this.body, this.appBar});
  final PreferredSizeWidget? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: body),
    );
  }
}
