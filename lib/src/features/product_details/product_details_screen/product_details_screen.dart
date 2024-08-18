import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/components.dart';
import 'package:bento_coding_challenge/src/features/product_details/product_details_screen/state_management/product_details_cubit.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.productId});
  final ProductId productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductDetailsCubit>(
      create: (context) => ProductDetailsCubit()..getProductDetails(productId),
      child: const ProductDetailsView(),
    );
  }
}

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (_, state) {
        return switch (state) {
          ProductDetailsLoading _ => const _ProductDetailsLoadingView(),
          ProductDetailsError errorState =>
            _ProductDetailsErrorView(errorState.exception),
          ProductDetailsLoaded loadedState =>
            _ProductDetailsLoadedView(loadedState.productDetails),
        };
      },
    );
  }
}

class _ProductDetailsLoadedView extends StatelessWidget {
  const _ProductDetailsLoadedView(this.productDetails);

  final ProductDetails productDetails;

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
                    ProductDetailsDescriptionSection(
                      description: description,
                    ),
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

class _ProductDetailsLoadingView extends StatelessWidget {
  const _ProductDetailsLoadingView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

class _ProductDetailsErrorView extends StatelessWidget {
  const _ProductDetailsErrorView(this.exception);
  final DomainException exception;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(exception.getMessage(context)),
      ),
    );
  }
}
