import 'package:bento_coding_challenge/service_location.dart';
import 'package:bento_coding_challenge/src/data/data.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_details_state.dart';

/// Manages the state of the [ProductDetailsView].
class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductRepository _productRepository;
  ProductDetailsCubit()
      : _productRepository = serviceLocator<ProductRepository>(),
        super(const ProductDetailsLoading());

  Future<void> getProductDetails(ProductId productId) async {
    final result = await _productRepository.getProductDetails(productId);

    emit(result.fold(
      (exception) => ProductDetailsError(exception),
      (productDetails) => ProductDetailsLoaded(productDetails),
    ));
  }
}
