import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:json_annotation/json_annotation.dart';

enum ProductTag {
  @JsonValue('vegetarian')
  vegetarian(
    svgIconAssetPath: ProductTagsSvgAssetPaths.vegetarian,
    colorHex: 0xFFC4F4C4,
  ),
  @JsonValue('halal-food')
  halalFood(
    svgIconAssetPath: ProductTagsSvgAssetPaths.halalFood,
    colorHex: 0xFFF3F5C0,
  ),
  @JsonValue('gluten-free')
  glutenFree(
    svgIconAssetPath: ProductTagsSvgAssetPaths.glutenFree,
    colorHex: 0xFFC4F1F3,
  );

  const ProductTag({required this.svgIconAssetPath, required this.colorHex});
  final String svgIconAssetPath;
  final int colorHex;

  String get label => switch (this) {
        vegetarian => 'Vegetarian'.hardcoded,
        halalFood => 'Halal Food'.hardcoded,
        glutenFree => 'Gluten-free'.hardcoded,
      };
}
