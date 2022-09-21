import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/features/bottom_navigation/custom_navigation_bar.dart';
import 'package:pavilion_rewards/src/features/bottom_navigation/tab_item.dart';
import 'package:pavilion_rewards/src/features/cards/presentation/cards_screen.dart';
import 'package:pavilion_rewards/src/features/home/presentation/home_screen.dart';
import 'package:pavilion_rewards/src/features/payments/presentation/payments_screen.dart';
import 'package:pavilion_rewards/src/features/settings/presentation/settings_screen.dart';

import '../../constants/app_sizes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  var _currentTab = TabItem.home;

  void _selectTab(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }

  final pages = [
    const HomeScreen(),
    const PaymentsScreen(),
    const CardsScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentTab.index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Sizes.p8),
          topRight: Radius.circular(Sizes.p8),
        ),
        child: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }
}
