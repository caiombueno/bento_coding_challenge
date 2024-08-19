import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/product_details_bottom_sheet/add_to_cart_button.dart';
import 'package:bento_coding_challenge/src/features/product_details/components/product_details_bottom_sheet/product_details_price_section.dart';
import 'package:bento_coding_challenge/src/features/product_details/product_details_screen/state_management/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsBottomSheet extends StatelessWidget {
  const ProductDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        if (state is! ProductDetailsLoaded) return const SizedBox.shrink();
        final productDetails = state.productDetails;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: ProductDetailsPriceSection(
                  fullPrice: productDetails.fullPrice,
                  salePrice: productDetails.salePrice,
                ),
              ),
              const Expanded(child: AddToCartButton()),
            ],
          ),
        );
      },
    );
  }
}
