import 'package:bento_coding_challenge/src/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
