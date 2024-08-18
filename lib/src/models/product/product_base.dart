import 'package:equatable/equatable.dart';

typedef ProductId = String;

abstract class ProductBase extends Equatable {
  const ProductBase({
    required this.productId,
    this.productName,
    required this.fullPrice,
    this.discountPercentage,
    this.productImageAssetPath,
    this.overallRating,
  });

  final ProductId productId;
  final String? productName;
  final double fullPrice;

  /// The amount of discount to apply to the full price, in decimal form.
  final double? discountPercentage;
  // on a real app this would be a network image
  final String? productImageAssetPath;
  final double? overallRating;

  double? get priceWithDiscount {
    final discountPercentage = this.discountPercentage;
    return (discountPercentage == null)
        ? null
        : fullPrice - (fullPrice * (discountPercentage));
  }
}
