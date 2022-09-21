import 'package:flutter/material.dart';

enum TabItem { home, payments, cards, settings }

class TabItemData {
  const TabItemData({required this.label, required this.icon});
  final IconData icon;
  final String label;

  static Map<TabItem, TabItemData> allTabItems = {
    TabItem.home: TabItemData(
      icon: Icons.home_rounded,
      label: TabItem.home.name.capitalize(),
    ),
    TabItem.payments: TabItemData(
      icon: Icons.payments,
      label: TabItem.payments.name.capitalize(),
    ),
    TabItem.cards: TabItemData(
      icon: Icons.credit_card_rounded,
      label: TabItem.cards.name.capitalize(),
    ),
    TabItem.settings: TabItemData(
      icon: Icons.settings,
      label: TabItem.settings.name.capitalize(),
    )
  };
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
