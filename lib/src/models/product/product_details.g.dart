// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) =>
    ProductDetails(
      productId: json['productId'] as String,
      productName: json['productName'] as String?,
      fullPrice: (json['fullPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      productImageAssetPath: json['productImageAssetPath'] as String?,
      overallRating: (json['overallRating'] as num?)?.toDouble(),
      shopName: json['shopName'] as String?,
      productDescription: json['productDescription'] as String?,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ProductTagEnumMap, e))
              .toList() ??
          const [],
    );

const _$ProductTagEnumMap = {
  ProductTag.vegetarian: 'vegetarian',
  ProductTag.halalFood: 'halal-food',
  ProductTag.glutenFree: 'gluten-free',
};
