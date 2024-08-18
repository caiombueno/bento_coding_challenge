import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/todays_special_section/product_card/product_info/product_card_add_button.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/theme_extension_util.dart';
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
                  child: _ProductPrices(
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

/// Show the sale price in evidence and the full price with a strikethrough.
/// If there is no discount, show only the full price (without strikethrough).
class _ProductPrices extends StatelessWidget {
  const _ProductPrices({required this.fullPrice, this.salePrice});
  final double fullPrice;
  final double? salePrice;

  @override
  Widget build(BuildContext context) {
    final salePrice = this.salePrice;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            flex: 1, child: _SalePriceText(salePrice: salePrice ?? fullPrice)),
        if (salePrice != null) ...[
          gapW4,
          Flexible(child: _StrikethroughFullPriceText(fullPrice: fullPrice)),
        ],
      ],
    );
  }
}

class _StrikethroughFullPriceText extends StatelessWidget {
  const _StrikethroughFullPriceText({required this.fullPrice});
  final double fullPrice;

  @override
  Widget build(BuildContext context) => Text(
        fullPrice.formattedPrice,
        style: context.theme.appTextTheme?.productStrikethroughFullPrice,
      );
}

class _SalePriceText extends StatelessWidget {
  const _SalePriceText({required this.salePrice});
  final double salePrice;

  @override
  Widget build(BuildContext context) => Text(
        salePrice.formattedPrice,
        style: context.theme.textTheme.titleMedium,
      );
}

extension on double {
  String get formattedPrice => '\$${toStringAsFixed(2)}';
}
