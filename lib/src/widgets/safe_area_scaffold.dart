import 'package:flutter/material.dart';

class SafeAreaScaffold extends StatelessWidget {
  const SafeAreaScaffold({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
    );
  }
}
