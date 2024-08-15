import 'package:bento_coding_challenge/src/features/home/home_screen.dart';
import 'package:bento_coding_challenge/src/routing/widgets/scaffold_with_nav_bar/scaffold_with_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _homeShellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'homeShell');

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
  navigatorKey: _rootNavigatorKey,
  initialLocation: const HomeRoute().location,
);

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: [
    TypedStatefulShellBranch<HomeShellBranch>(
      routes: [TypedGoRoute<HomeRoute>(path: '/')],
    ),
    TypedStatefulShellBranch<DelasShellBranch>(
      routes: [TypedGoRoute<DelasRoute>(path: '/delas')],
    ),
    TypedStatefulShellBranch<StoreShellBranch>(
      routes: [TypedGoRoute<StoreRoute>(path: '/store')],
    ),
    TypedStatefulShellBranch<CartShellBranch>(
      routes: [TypedGoRoute<CartRoute>(path: '/cart')],
    ),
    TypedStatefulShellBranch<AccountShellBranch>(
      routes: [TypedGoRoute<AccountRoute>(path: '/account')],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) =>
      ScaffoldWithNavBar(navigationShell: navigationShell);
}

class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();
}

class DelasShellBranch extends StatefulShellBranchData {
  const DelasShellBranch();
}

class StoreShellBranch extends StatefulShellBranchData {
  const StoreShellBranch();
}

class CartShellBranch extends StatefulShellBranchData {
  const CartShellBranch();
}

class AccountShellBranch extends StatefulShellBranchData {
  const AccountShellBranch();
}

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
