import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCategoryListView extends StatelessWidget {
  const ProductCategoryListView({super.key, required this.maxHeight});
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          final category = ProductCategory.values[index];
          return CategoryItemWidget(category: category);
        }),
        separatorBuilder: (_, __) => gapW12,
        itemCount: ProductCategory.values.length,
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.category});

  final ProductCategory category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: AspectRatio(
            aspectRatio: 1,
            child: _CategoryIconButton(category: category),
          ),
        ),
        gapH4,
        Flexible(
          flex: 1,
          child: Text(
            category.label,
            style: context.theme.textTheme.labelMedium,
          ),
        )
      ],
    );
  }
}

class _CategoryIconButton extends StatelessWidget {
  const _CategoryIconButton({required this.category});

  final ProductCategory category;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(category.svgAssetPath, fit: BoxFit.contain),
    );
  }
}
