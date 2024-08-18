import 'package:bento_coding_challenge/src/models/product/product_base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_summary.g.dart';

@JsonSerializable()
class ProductSummary extends ProductBase {
  const ProductSummary({
    required super.productId,
    super.productName,
    required super.fullPrice,
    super.discountPercentage,
    super.productImageAssetPath,
    super.overallRating,
    this.productColorHex,
  });

  final int? productColorHex;

  factory ProductSummary.fromJson(Map<String, dynamic> json) =>
      _$ProductSummaryFromJson(json);

  @override
  List<Object?> get props => [
        productId,
        productName,
        fullPrice,
        discountPercentage,
        productImageAssetPath,
        productColorHex,
      ];
}

@JsonSerializable()
class ProductSummaryList {
  ProductSummaryList({required this.productSummaries});
  final List<ProductSummary> productSummaries;

  factory ProductSummaryList.fromJson(Map<String, dynamic> json) =>
      _$ProductSummaryListFromJson(json);
}
