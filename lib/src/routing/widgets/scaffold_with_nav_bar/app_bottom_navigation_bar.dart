import 'package:bento_coding_challenge/src/utils/hardcoded_string.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) => navigationShell.goBranch(index,
      initialLocation: index == navigationShell.currentIndex);

  @override
  Widget build(BuildContext context) {
    const tabItems = _TabItem.values;
    return ConvexAppBar(
      height: MediaQuery.of(context).size.height * 0.08,
      backgroundColor: Colors.white,
      activeColor: const Color(0xff10365A),
      color: const Color(0xFF56E39C),
      style: TabStyle.reactCircle,
      items: List.generate(
        tabItems.length,
        (index) => TabItem(
          icon: Icon(
            tabItems[index].iconData,
            color: const Color(0xFF56E39C),
          ),
          title: tabItems[index].label,
        ),
      ),
      onTap: _goBranch,
    );
  }
}

enum _TabItem {
  home(iconData: Icons.home),
  delas(iconData: FontAwesomeIcons.tag),
  store(iconData: Icons.store),
  cart(iconData: Icons.shopping_bag_sharp),
  account(iconData: Icons.account_circle);

  const _TabItem({required this.iconData});
  final IconData iconData;

  String get label => switch (this) {
        _TabItem.home => 'Home'.hardcoded,
        _TabItem.delas => 'Delas'.hardcoded,
        _TabItem.store => 'Store'.hardcoded,
        _TabItem.cart => 'Cart'.hardcoded,
        _TabItem.account => 'Account'.hardcoded,
      };
}
