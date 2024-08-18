import 'package:bento_coding_challenge/src/data/data_source/data_source.dart';
import 'package:bento_coding_challenge/src/data/repository/repository.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void configureDependencies() {
  serviceLocator
      .registerLazySingleton<ProductDataSource>(() => FakeProductDataSource());

  serviceLocator.registerLazySingleton<ProductRepository>(
      () => ProductRepository(serviceLocator<ProductDataSource>()));
}
