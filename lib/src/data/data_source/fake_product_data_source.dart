import 'package:bento_coding_challenge/src/constants/asset_paths.dart';
import 'package:bento_coding_challenge/src/data/data_source/product_data_source.dart';
import 'package:bento_coding_challenge/src/models/exceptions/data_exception.dart';
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
        "productName": "Organic Fresh Green Cabbage",
        "fullPrice": 8.15,
        "discountPercentage": 0.2,
        "productImageAssetPath": cabbagePngAssetPath,
        "overallRating": 4.5,
        "productColorHex": 0xFFEE7FFDF,
      }
    ]
  };

  @override
  Future<Either<Exception, List<ProductSummary>>>
      getDailySpecialProductSummaries() async {
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
      return Either.left(Exception(e.toString()));
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
}
