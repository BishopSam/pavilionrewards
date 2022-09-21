import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

import 'package:pavilion_rewards/src/features/home/presentation/widgets/app_bar_widgets/balance_card.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Sizes.p32),
          bottomRight: Radius.circular(Sizes.p32),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12, blurRadius: 7.0, offset: Offset(3.0, 0.0))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p8),
        child: Column(
          children: [
            gapH4,
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.p32),
                  child: Image.asset(
                    'assets/images/profile_photo.png',
                    height: Sizes.p32,
                    width: Sizes.p32,
                  ),
                ),
                gapW8,
                const Text(
                  'Hi, Janet',
                  style: TextStyle(
                      fontFamily: kManropeBold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                const Spacer(),
                const Icon(Icons.search),
                gapW8,
                const Icon(Icons.help_outline),
                gapW8,
                const Icon(Icons.notifications_active_outlined)
              ],
            ),
            gapH32,
            Row(
              children: const [
                BalanceCard(
                  walletType: 'Wallet Balance',
                  walletBalance: '\$2,500',
                  assetName: 'assets/images/wallet.svg',
                ),
                gapW8,
                BalanceCard(
                  walletType: 'Reward Balance',
                  walletBalance: '\$2,500',
                  assetName: 'assets/images/reward.svg',
                )
              ],
            ),
            gapH32,
          ],
        ),
      ),
    );
  }
}
