import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:bento_coding_challenge/src/widgets/safe_area_scaffold.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.productId});
  final ProductId productId;

  @override
  Widget build(BuildContext context) {
    return const ProductDetailsView();
  }
}

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeAreaScaffold(
      appBar: AppBar(),
      body: const Placeholder(),
    );
  }
}
