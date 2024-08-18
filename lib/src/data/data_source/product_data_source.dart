import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:fpdart/fpdart.dart';

abstract class ProductDataSource {
  Future<Either<Exception, List<ProductSummary>>>
      getDailySpecialProductSummaryList();

  Future<Either<Exception, ProductDetails>> getProductDetails(
      ProductId productId);
}
