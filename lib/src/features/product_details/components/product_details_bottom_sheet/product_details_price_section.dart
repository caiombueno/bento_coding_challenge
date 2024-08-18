import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:bento_coding_challenge/src/widgets/product_prices_indicator.dart';
import 'package:flutter/cupertino.dart';

class ProductDetailsPriceSection extends StatelessWidget {
  const ProductDetailsPriceSection({
    super.key,
    required this.fullPrice,
    required this.salePrice,
  });

  final double fullPrice;
  final double? salePrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Price'.hardcoded,
            style: context.theme.textTheme.labelLarge
                ?.copyWith(fontSize: Sizes.p16)),
        gapH4,
        ProductPricesIndicator(
          fullPrice: fullPrice,
          salePrice: salePrice,
          textScaleFactor: 1.6,
        )
      ],
    );
  }
}
