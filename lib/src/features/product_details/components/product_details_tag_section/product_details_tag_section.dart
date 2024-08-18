import 'package:bento_coding_challenge/src/features/product_details/components/product_details_tag_section/product_details_tag.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/product_details_tag_section/product_details_tag_container.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:flutter/material.dart';

class ProductDetailsTagsSection extends StatelessWidget {
  const ProductDetailsTagsSection({super.key, required this.tags});
  final List<ProductTag> tags;

  @override
  Widget build(BuildContext context) {
    final tags = this.tags.firstThreeElements;
    return ProductDetailsTagContainer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            tags.length,
            (index) => ProductDetailsTag(tag: tags[index]),
          ),
        ),
      ),
    );
  }
}

extension on List<ProductTag> {
  List<ProductTag> get firstThreeElements => take(3).toList();
}
