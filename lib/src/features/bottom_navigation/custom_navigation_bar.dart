import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';
import 'package:pavilion_rewards/src/features/bottom_navigation/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhiteColor,
        selectedItemColor: kBlueColor,
        unselectedItemColor: Colors.black26,
        items: [
          _buildItem(TabItem.home),
          _buildItem(TabItem.payments),
          _buildItem(TabItem.cards),
          _buildItem(TabItem.settings)
        ],
        currentIndex: currentTab.index,
        selectedLabelStyle: const TextStyle(fontFamily: kManropeRegular),
        unselectedLabelStyle: const TextStyle(fontFamily: kManropeRegular),
        onTap: (index) {
          onSelectTab(
            TabItem.values[index],
          );
          debugPrint(TabItem.values[index].toString());
        });
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabItems[tabItem];
    return BottomNavigationBarItem(
      icon: Icon(itemData!.icon),
      label: itemData.label,
    );
  }

  Color _colorTabMatching(TabItem item) {
    return currentTab == item ? kBlueColor : Colors.grey;
  }
}
