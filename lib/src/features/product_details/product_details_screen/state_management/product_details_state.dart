part of 'product_details_cubit.dart';

sealed class ProductDetailsState extends Equatable {
  const ProductDetailsState();
}

class ProductDetailsLoading extends ProductDetailsState {
  const ProductDetailsLoading();

  @override
  List<Object?> get props => [];
}

class ProductDetailsLoaded extends ProductDetailsState {
  final ProductDetails productDetails;

  const ProductDetailsLoaded(this.productDetails);

  @override
  List<Object?> get props => [productDetails];
}

class ProductDetailsError extends ProductDetailsState {
  final DomainException exception;

  const ProductDetailsError(this.exception);

  @override
  List<Object?> get props => [exception];
}
