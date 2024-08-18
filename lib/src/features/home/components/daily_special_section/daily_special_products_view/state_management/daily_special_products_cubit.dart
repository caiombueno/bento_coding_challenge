import 'package:bento_coding_challenge/src/data/data.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:bento_coding_challenge/service_location.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'daily_special_products_state.dart';

/// This cubit manages the state of [DailySpecialProductsView].
class DailySpecialProductsCubit extends Cubit<DailySpecialProductsState> {
  final ProductRepository _productRepository;
  DailySpecialProductsCubit()
      : _productRepository = serviceLocator<ProductRepository>(),
        super(const DailySpecialProductsLoading());

  Future<void> getProductSummaryList() async {
    final productSummaryListEither =
        await _productRepository.getDailySpecialProductSummaryList();

    emit(
      productSummaryListEither.fold(
        (exception) => DailySpecialProductsError(exception),
        (productSummaryList) => DailySpecialProductsLoaded(productSummaryList),
      ),
    );
  }
}
