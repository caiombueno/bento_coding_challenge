import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/data/data_source/product_data_source.dart';
import 'package:bento_coding_challenge/src/models/exceptions/data_exception.dart';
import 'package:bento_coding_challenge/src/models/product/product_base.dart';
import 'package:bento_coding_challenge/src/models/product/product_details.dart';
import 'package:bento_coding_challenge/src/models/product/product_summary.dart';
import 'package:fpdart/fpdart.dart';

class FakeProductDataSource implements ProductDataSource {
  // ignore: unnecessary_nullable_for_final_variable_declarations
  static const Map<String, dynamic>? _fakeProductSummaries = {
    "productSummaries": [
      {
        "productId": '1',
        "productName": "Orange",
        "fullPrice": 4.00,
        "discountPercentage": 0.1,
        "productImageAssetPath": orangePngAssetPath,
        "overallRating": 5.0,
        "productColorHex": 0xFFFFF3DE,
      },
      {
        "productId": '2',
        "productName": "Green Cabbage",
        "fullPrice": 8.15,
        "discountPercentage": 0.2,
        "productImageAssetPath": cabbagePngAssetPath,
        "overallRating": 4.5,
        "productColorHex": 0xFFEE7FFDF,
      }
    ]
  };

  static const Map<String, dynamic> _fakeProductDetails = {
    "1": {
      "productId": '1',
      "productName": "Orange",
      "fullPrice": 4.00,
      "discountPercentage": 0.1,
      "productImageAssetPath": orangePngAssetPath,
      "overallRating": 5.0,
      "productColorHex": 0xFFFFF3DE,
      "shopName": "Fresh Market",
      "productDescription":
          "Oranges are low in calories and full of nutrients, they promote clear, healthy, skin and can help to lower our risk for many diseases as part of an overall healthy and varied diet.",
      "tags": ["vegetarian", "halal-food", "gluten-free"],
    },
    "2": {
      "productId": '2',
      "productName": "Green Cabbage",
      "fullPrice": 8.15,
      "discountPercentage": 0.2,
      "productImageAssetPath": cabbagePngAssetPath,
      "overallRating": 4.5,
      "productColorHex": 0xFFEE7FFDF,
      "shopName": "Fresh Market",
      "productDescription":
          "Cabbage is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage, and belongs to the cole crops or brassicas, meaning it is closely related to broccoli and cauliflower; Brussels sprouts; and Savoy cabbage.",
      "tags": ["vegetarian", "halal-food", "gluten-free"],
    }
  };

  @override
  Future<Either<Exception, List<ProductSummary>>>
      getDailySpecialProductSummaryList() async {
    try {
      // Simulate a network request
      final data = await Future.delayed(
        const Duration(seconds: 1),
        () => _fakeProductSummaries,
      ).onError((_, __) => throw const ServerCommunicationFailureException());

      if (data == null || data.isEmpty) throw const EmptyResultException();

      final parsedDataEither =
          _FakeProductDataSourceParser.parseProductSummaries(data);

      return parsedDataEither.fold(
        (exception) => Left(exception),
        (productSummaries) => Right(productSummaries),
      );
    } on DataException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, ProductDetails>> getProductDetails(
    ProductId productId,
  ) async {
    try {
      // Simulate a network request
      final data = await Future.delayed(
        const Duration(seconds: 1),
        () => _fakeProductDetails[productId],
      ).onError((_, __) => throw const ServerCommunicationFailureException());

      if (data == null || data.isEmpty) throw const EmptyResultException();

      final parsedDataEither =
          _FakeProductDataSourceParser.parseProductDetails(data);

      return parsedDataEither.fold(
        (exception) => Left(exception),
        (productDetails) => Right(productDetails),
      );
    } on DataException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}

class _FakeProductDataSourceParser {
  static Either<DataFormatFailureException, List<ProductSummary>>
      parseProductSummaries(Map<String, dynamic> data) {
    try {
      final productSummaryList = ProductSummaryList.fromJson(data);
      return Right(productSummaryList.productSummaries);
    } catch (_) {
      return const Left(DataFormatFailureException());
    }
  }

  static Either<DataFormatFailureException, ProductDetails> parseProductDetails(
    Map<String, dynamic> data,
  ) {
    try {
      final productDetails = ProductDetails.fromJson(data);
      return Right(productDetails);
    } catch (_) {
      return const Left(DataFormatFailureException());
    }
  }
}
