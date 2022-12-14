import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard(
      {Key? key,
      required this.walletType,
      required this.walletBalance,
      required this.assetName})
      : super(key: key);
  final String walletType;
  final String walletBalance;
  final String assetName;

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool _obscure = true;

  final String _obscureText = '* * * * * ';
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
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.p16,
                horizontal: Sizes.p8,
              ),
              child: SvgPicture.asset(
                widget.assetName,
                height: 28,
              ),
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
                      _obscure ? _obscureText : widget.walletBalance,
                      style: const TextStyle(
                          fontFamily: kManropeRegular,
                          color: kWhiteColor,
                          fontSize: 12),
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
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
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
