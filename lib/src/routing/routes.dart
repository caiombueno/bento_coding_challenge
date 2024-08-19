part of 'app_router.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class DelasRoute extends GoRouteData {
  const DelasRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}

class StoreRoute extends GoRouteData {
  const StoreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}

class CartRoute extends GoRouteData {
  const CartRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}

class AccountRoute extends GoRouteData {
  const AccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Placeholder();
}

@TypedGoRoute<ProductDetailsRoute>(path: '/product/:productId')
class ProductDetailsRoute extends GoRouteData {
  const ProductDetailsRoute({
    required this.productId,
    this.$extra,
  });
  final ProductId productId;

  /// The image asset path of the product. This is an extra parameter that is passed to the route.
  final String? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ProductDetailsScreen(
        productId: productId,
        imageAssetPath: $extra,
      );
}
