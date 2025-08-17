import 'package:budget_planner/app/views/add_view.dart';
import 'package:budget_planner/app/views/home_view.dart';
import 'package:budget_planner/app/views/setting_view.dart';
import 'package:budget_planner/app/views/target_view.dart';
import 'package:budget_planner/app/views/transaction_view.dart';
import 'package:budget_planner/theme.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class InitialView extends StatelessWidget {
  InitialView({super.key});

  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> _buildScreens() {
    return [
      HomeView(),
      TransactionView(),
      AddView(),
      TargetView(),
      SettingView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.monetization_on),
        title: ("Transaction"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add),
        title: ("Add Data"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.star),
        title: ("Target"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: ("Setting"),
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      backgroundColor: AppColors.secondaryColor,
      screens: _buildScreens(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style3,
    );
  }
}
