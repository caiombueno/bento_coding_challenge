// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSummary _$ProductSummaryFromJson(Map<String, dynamic> json) =>
    ProductSummary(
      productId: json['productId'] as String,
      productName: json['productName'] as String?,
      fullPrice: (json['fullPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      productImageAssetPath: json['productImageAssetPath'] as String?,
      overallRating: (json['overallRating'] as num?)?.toDouble(),
      productColorHex: (json['productColorHex'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductSummaryToJson(ProductSummary instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'fullPrice': instance.fullPrice,
      'discountPercentage': instance.discountPercentage,
      'productImageAssetPath': instance.productImageAssetPath,
      'overallRating': instance.overallRating,
      'productColorHex': instance.productColorHex,
    };
