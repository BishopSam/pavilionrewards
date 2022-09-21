import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/common_widgets/card.dart';
import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/features/home/presentation/widgets/ad_card.dart';

import 'package:pavilion_rewards/src/features/home/presentation/widgets/app_bar_widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeAppBar(),
            gapH16,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: AdCard(),
            ),
            gapH20,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CreditCard(),
            )
          ],
        ),
      )),
    );
  }
}
