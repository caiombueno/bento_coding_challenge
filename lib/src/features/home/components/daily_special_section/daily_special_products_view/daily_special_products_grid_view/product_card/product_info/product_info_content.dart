import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/daily_special_section/daily_special_products_view/daily_special_products_grid_view/product_card/product_info/product_card_add_button.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/theme_extension_util.dart';
import 'package:bento_coding_challenge/src/widgets/product_prices_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductInfoContent extends StatelessWidget {
  const ProductInfoContent({
    super.key,
    required this.productName,
    required this.fullPrice,
    required this.salePrice,
  });
  final String productName;
  final double fullPrice;
  final double? salePrice;

  @override
  Widget build(BuildContext context) {
    const paddingValue = Sizes.p8;
    return Padding(
      padding: const EdgeInsets.only(top: paddingValue, left: paddingValue),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(flex: 3, child: _ProductNameText(productName: productName)),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: ProductPricesIndicator(
                    fullPrice: fullPrice,
                    salePrice: salePrice,
                  ),
                ),
                const Flexible(child: ProductCardAddButton()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductNameText extends StatelessWidget {
  const _ProductNameText({required this.productName});
  final String productName;

  @override
  Widget build(BuildContext context) => Text(
        productName,
        style: context.theme.appTextTheme?.productCardName,
      );
}
