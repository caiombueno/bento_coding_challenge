import 'package:bento_coding_challenge/src/models/product/product_base.dart';

class ProductDetails extends ProductBase {
  const ProductDetails({
    required super.productId,
    super.productName,
    required super.fullPrice,
    super.discountPercentage,
    super.productImageAssetPath,
    super.overallRating,
    this.shopName,
    this.productDescription,
    this.tags = const [],
  });

  final String? shopName;

  final String? productDescription;

  final List<ProductTag> tags;

  @override
  List<Object?> get props => [
        productId,
        productName,
        fullPrice,
        discountPercentage,
        productImageAssetPath,
        overallRating,
        shopName,
        productDescription,
        tags,
      ];
}

enum ProductTag {
  vegetarian,
  halalFood,
  glutenFree,
}
