import 'package:bento_coding_challenge/src/routing/branches.dart';
import 'package:bento_coding_challenge/src/routing/routes.dart';
import 'package:bento_coding_challenge/src/routing/widgets/scaffold_with_nav_bar/scaffold_with_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
  navigatorKey: _rootNavigatorKey,
  initialLocation: const HomeRoute().location,
);

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: [
    TypedStatefulShellBranch<HomeShellBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(path: '/', routes: [
          TypedGoRoute<ProductDetailsRoute>(path: 'product/:productId')
        ]),
      ],
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
