import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/common_widgets/card_widget.dart';
import 'package:pavilion_rewards/src/common_widgets/transactions_card.dart';
import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/features/cards/domain/card.dart';
import 'package:pavilion_rewards/src/features/home/presentation/widgets/ad_card.dart';

import 'package:pavilion_rewards/src/features/home/presentation/widgets/app_bar_widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const HomeAppBar(),
          gapH12,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: AdCard(),
          ),
          gapH12,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CreditCard(
              card: CreditCardModel(),
            ),
          ),
          gapH12,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TransactionsCard(),
          ),
        ],
      )),
    );
  }
}
