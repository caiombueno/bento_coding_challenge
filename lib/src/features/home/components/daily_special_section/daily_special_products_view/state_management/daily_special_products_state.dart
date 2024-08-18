part of 'daily_special_products_cubit.dart';

sealed class DailySpecialProductsState extends Equatable {
  const DailySpecialProductsState();
}

class DailySpecialProductsLoading extends DailySpecialProductsState {
  const DailySpecialProductsLoading();

  @override
  List<Object?> get props => [];
}

class DailySpecialProductsLoaded extends DailySpecialProductsState {
  final List<ProductSummary> productSummaryList;

  const DailySpecialProductsLoaded(this.productSummaryList);

  @override
  List<Object?> get props => [productSummaryList];
}

class DailySpecialProductsError extends DailySpecialProductsState {
  final DomainException exception;

  const DailySpecialProductsError(this.exception);

  @override
  List<Object?> get props => [exception];
}
