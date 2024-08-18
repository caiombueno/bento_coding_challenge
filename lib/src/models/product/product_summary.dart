import 'package:bento_coding_challenge/src/models/product/product_base.dart';

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
