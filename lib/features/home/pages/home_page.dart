import 'package:agrohaven/features/Add/pages/add_page.dart';
import 'package:agrohaven/features/cart/pages/cart_page.dart';
import 'package:agrohaven/features/home/pages/home.dart';

import 'package:agrohaven/features/location/pages/location_page.dart';
import 'package:agrohaven/features/profile/pages/profile_page.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Navigation Bar Demo',
      debugShowCheckedModeBanner: false,
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: Home(),
            item: ItemConfig(
              icon: Assets.images.home.image(),
              inactiveIcon: Assets.images.homeInactive.image(),
              title: "Home",
              activeForegroundColor: Color(0XFF3CAD6D),
            ),
          ),
          PersistentTabConfig(
            screen: ProfilePage(),
            item: ItemConfig(
              inactiveIcon: Assets.images.profile.image(),

              icon: Assets.images.profileActive.image(),
              title: "profile",
              // activeColorSecondary: Color(0XFF3CAD6D),
              // activeForegroundColor: Colors.red,
              activeForegroundColor: Color(0XFF3CAD6D),
            ),
          ),
          PersistentTabConfig(
            screen: AddPage(),
            item: ItemConfig(
              inactiveIcon: Assets.images.addActive.image(),
              icon: Assets.images.add.image(),
              activeForegroundColor: Color(0XFF3CAD6D),
              // title: "Add",
            ),
          ),
          PersistentTabConfig(
            screen: LocationPage(),
            item: ItemConfig(
              inactiveIcon: Assets.images.location.image(),
              icon: Assets.images.locationActive.image(),
              title: "Farms near you",
              activeForegroundColor: Color(0XFF3CAD6D),
            ),
          ),
          PersistentTabConfig(
            screen: CartPage(),
            item: ItemConfig(
              inactiveIcon: Assets.images.cart.image(),
              icon: Assets.images.cartActive.image(),
              title: "Cart",
              activeForegroundColor: Color(0XFF3CAD6D),
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style13BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
