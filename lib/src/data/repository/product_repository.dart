import 'package:bento_coding_challenge/src/data/data_source/product_data_source.dart';
import 'package:bento_coding_challenge/src/models/exceptions/exceptions.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:fpdart/fpdart.dart';

class ProductRepository {
  final ProductDataSource _productDataSource;
  const ProductRepository(this._productDataSource);

  Future<Either<DomainException, List<ProductSummary>>>
      getDailySpecialProductSummaries() async {
    final result = await _productDataSource.getDailySpecialProductSummaries();

    return result.fold(
      (exception) {
        final domainException = switch (exception) {
          EmptyResultException _ => const NoProductSummaryListFoundException(),
          _ => const ProductSummaryListFetchFailureException(),
        };

        return Left(domainException);
      },
      (productSummaries) => Right(productSummaries),
    );
  }
}
