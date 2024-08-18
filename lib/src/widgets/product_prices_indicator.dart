import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/theme_extension_util.dart';
import 'package:flutter/material.dart';

/// Show the sale price in evidence and the full price with a strikethrough.
/// If there is no discount, show only the full price (without strikethrough).
class ProductPricesIndicator extends StatelessWidget {
  const ProductPricesIndicator({
    super.key,
    required this.fullPrice,
    this.salePrice,
    this.textScaleFactor = 1,
  });
  final double fullPrice;
  final double? salePrice;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    final salePrice = this.salePrice;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            flex: 1,
            child: _SalePriceText(
              salePrice: salePrice ?? fullPrice,
              textScaleFactor: textScaleFactor,
            )),
        if (salePrice != null) ...[
          gapW8,
          Flexible(
              child: _StrikethroughFullPriceText(
            fullPrice: fullPrice,
            textScaleFactor: textScaleFactor,
          )),
        ],
      ],
    );
  }
}

class _StrikethroughFullPriceText extends StatelessWidget {
  const _StrikethroughFullPriceText({
    required this.fullPrice,
    this.textScaleFactor = 1,
  });
  final double fullPrice;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) => Text(
        fullPrice.formattedPrice,
        style: context.theme.appTextTheme?.productStrikethroughFullPrice,
        textScaler: TextScaler.linear(textScaleFactor),
      );
}

class _SalePriceText extends StatelessWidget {
  const _SalePriceText({
    required this.salePrice,
    this.textScaleFactor = 1,
  });
  final double salePrice;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) => Text(
        salePrice.formattedPrice,
        style: context.theme.textTheme.titleMedium,
        textScaler: TextScaler.linear(textScaleFactor),
      );
}

extension on double {
  String get formattedPrice => '\$${toStringAsFixed(2)}';
}
