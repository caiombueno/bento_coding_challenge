import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/components.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const productDetails = ProductDetails(
  productId: '1',
  productName: 'Organic Fresh Green Cabbage',
  fullPrice: 8.15,
  discountPercentage: 0.15,
  productImageAssetPath: cabbagePngAssetPath,
  overallRating: 4.5,
  shopName: 'Alisha Mart',
  productDescription: """
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac sem nec quam elementum luctus non vel orci. Nullam vehicula, sapien at dictum faucibus, lacus justo iaculis velit, vitae sollicitudin erat urna eu libero. Aliquam erat volutpat. Praesent vel velit eu felis cursus interdum. Fusce et eros bibendum, dignissim nunc sed, cursus nulla. Aenean vitae vehicula arcu, sed blandit lacus. Nullam fermentum, nisl nec viverra scelerisque, mauris libero scelerisque ex, eget cursus sem sapien in odio. Vestibulum euismod libero ac leo dignissim, in fermentum mauris hendrerit. Nam id tortor id justo tincidunt vehicula. Sed gravida arcu eu massa malesuada, quis fermentum elit volutpat. Vivamus ac orci nec ipsum tempus eleifend sed ut libero. Phasellus elementum, orci eu rhoncus ferment

""",
  tags: [ProductTag.vegetarian, ProductTag.halalFood, ProductTag.glutenFree],
);

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.productId});
  final ProductId productId;

  @override
  Widget build(BuildContext context) {
    return const ProductDetailsView();
  }
}

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final shopName = productDetails.shopName;
    final tags = productDetails.tags;
    final description = productDetails.productDescription;
    return ProductDetailsScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ProductDetailsImage(
                productImageAssetPath: productDetails.productImageAssetPath,
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapH12,
                  ProductNameAndRatingIndicatorRow(
                    productName: productDetails.productName,
                    productRating: productDetails.overallRating,
                  ),
                  if (shopName != null) ...[
                    gapH12,
                    ProductDetailsShopText(shopName: shopName),
                  ],
                  if (tags.isNotEmpty) ...[
                    gapH12,
                    ProductDetailsTagsSection(tags: tags),
                  ],
                  if (description != null) ...[
                    gapH12,
                    ProductDetailsDescriptionSection(description: description),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProductDetailsBottomSheet(
        fullPrice: productDetails.fullPrice,
        salePrice: productDetails.salePrice,
      ),
    );
  }
}
