import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';

enum ProductCategory {
  vegan(ProductCategoriesSvgAssetPaths.vegan),
  meat(ProductCategoriesSvgAssetPaths.meat),
  fruits(ProductCategoriesSvgAssetPaths.fruits),
  milk(ProductCategoriesSvgAssetPaths.milk),
  fish(ProductCategoriesSvgAssetPaths.fish);

  const ProductCategory(this.svgAssetPath);
  final String svgAssetPath;

  String get label => switch (this) {
        ProductCategory.vegan => 'Vegan'.hardcoded,
        ProductCategory.meat => 'Meat'.hardcoded,
        ProductCategory.fruits => 'Fruits'.hardcoded,
        ProductCategory.milk => 'Milk'.hardcoded,
        ProductCategory.fish => 'Fish'.hardcoded,
      };
}
