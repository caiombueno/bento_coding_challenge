import 'package:bento_coding_challenge/src/models/exceptions/app_exception.dart';
import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:flutter/material.dart';

abstract class DomainException extends AppException {
  const DomainException(super.code);

  String getMessage(BuildContext context);
}

class NoProductSummaryListFoundException extends DomainException {
  const NoProductSummaryListFoundException()
      : super('no-product-summary-list-found');

  @override
  String getMessage(BuildContext context) => "No products found.".hardcoded;
}

class ProductSummaryListFetchFailureException extends DomainException {
  const ProductSummaryListFetchFailureException()
      : super('product-summary-list-fetch-failure');

  @override
  String getMessage(BuildContext context) =>
      "Failed to fetch products.".hardcoded;
}

class NoProductDetailsFoundException extends DomainException {
  const NoProductDetailsFoundException() : super('no-product-details-found');

  @override
  String getMessage(BuildContext context) => "No product found.".hardcoded;
}

class ProductDetailsFetchFailureException extends DomainException {
  const ProductDetailsFetchFailureException()
      : super('product-details-fetch-failure');

  @override
  String getMessage(BuildContext context) =>
      "Failed to fetch product details.".hardcoded;
}
