import 'package:equatable/equatable.dart';

typedef ProductId = String;

class Product extends Equatable {
  const Product({
    required this.productId,
    this.productName,
    required this.fullPrice,
    this.discountPercentage,
    this.productImageAssetPath,
    this.overallRating,
    this.productColorHex,
  });
  final ProductId productId;
  final String? productName;
  final double fullPrice;

  /// The amount of discount to apply to the full price, in decimal form.
  final double? discountPercentage;
  // on a real app this would be a network image
  final String? productImageAssetPath;
  final double? overallRating;
  final int? productColorHex;

  double? get priceWithDiscount {
    final discountPercentage = this.discountPercentage;
    return (discountPercentage == null)
        ? null
        : fullPrice - (fullPrice * (discountPercentage));
  }

  @override
  List<Object?> get props => [
        productId,
        productName,
        fullPrice,
        discountPercentage,
        productImageAssetPath,
      ];
}
