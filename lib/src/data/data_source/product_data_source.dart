import 'package:bento_coding_challenge/src/models/product/product.dart';
import 'package:fpdart/fpdart.dart';

abstract class ProductDataSource {
  Future<Either<Exception, List<ProductSummary>>>
      getDailySpecialProductSummaryList();
}
