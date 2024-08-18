import 'package:bento_coding_challenge/src/models/product/product_base.dart';
import 'package:bento_coding_challenge/src/models/product/product_tag.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_details.g.dart';

@JsonSerializable(createToJson: false)
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

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);

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
