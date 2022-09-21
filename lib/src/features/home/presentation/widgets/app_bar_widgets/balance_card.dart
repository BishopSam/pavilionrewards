import 'package:flutter/material.dart';

import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard(
      {Key? key,
      required this.walletType,
      required this.walletBalance,
      required this.icon})
      : super(key: key);
  final String walletType;
  final String walletBalance;
  final IconData icon;

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool _obscure = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.p12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.p16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              widget.icon,
              size: Sizes.p48,
              color: kWhiteColor,
            ),
            gapW4,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.walletType,
                  style: const TextStyle(
                      fontFamily: kManropeBold,
                      color: kWhiteColor,
                      fontSize: 13),
                ),
                gapH4,
                Row(
                  children: [
                    Text(
                      widget.walletBalance,
                      style: const TextStyle(
                          fontFamily: kManropeRegular,
                          color: kWhiteColor,
                          fontSize: 11),
                    ),
                    gapW60,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                      child: Icon(
                        _obscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: kWhiteColor,
                        size: Sizes.p16,
                      ),
                    ),
                    gapW12,
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
