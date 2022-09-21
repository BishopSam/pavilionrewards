import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';
import 'package:pavilion_rewards/src/features/cards/domain/card.dart';

import '../constants/app_sizes.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key,
    required this.card,
  }) : super(key: key);
  final CreditCardModel card;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kBlueColor,
        border: Border.all(color: kDarkBlueColor, width: 1.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(16)),
                child: SvgPicture.asset(
                  'assets/images/top_ellipse.svg',
                  height: Sizes.p52,
                  width: Sizes.p52,
                )),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                child: SvgPicture.asset(
                  'assets/images/right_ellipse.svg',
                )),
          ),
          Positioned(
            top: 23,
            right: 75,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                child: SvgPicture.asset(
                  'assets/images/center_ellipse.svg',
                )),
          ),
          Positioned(
            top: 105,
            right: 30,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    child: SvgPicture.asset(
                      'assets/images/mastercard_logo.svg',
                    )),
                const Text(
                  'mastercard',
                  style: TextStyle(
                      color: kWhiteColor,
                      fontFamily: kManropeRegular,
                      fontSize: 11),
                )
              ],
            ),
          ),
          Positioned(
            top: 22,
            left: 22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Virtual',
                  style: TextStyle(
                      fontFamily: kManropeExtraBold,
                      fontSize: 15,
                      color: kWhiteColor),
                ),
                gapH12,
                Text(
                  '${card.cardNumber.substring(0, 4)}   ${card.cardNumber.substring(4, 8)}   ${card.cardNumber.substring(8, 12)}   ${card.cardNumber.substring(12, 16)}',
                  style: const TextStyle(
                      fontFamily: kManropeExtraBold,
                      fontSize: 15,
                      color: kWhiteColor),
                ),
                gapH8,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Expiry date',
                          style: TextStyle(
                              fontFamily: kManropeRegular,
                              fontSize: 6,
                              color: kWhiteColor),
                        ),
                        Text(
                          card.expiryDate,
                          style: const TextStyle(
                              fontFamily: kManropeBold,
                              fontSize: 11,
                              color: kWhiteColor),
                        ),
                      ],
                    ),
                    gapW48,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CVV',
                          style: TextStyle(
                              fontFamily: kManropeRegular,
                              fontSize: 6,
                              color: kWhiteColor),
                        ),
                        Text(
                          card.cVV,
                          style: const TextStyle(
                              fontFamily: kManropeBold,
                              fontSize: 11,
                              color: kWhiteColor),
                        ),
                      ],
                    )
                  ],
                ),
                gapH12,
                Text(
                  card.cardHolderName,
                  style: const TextStyle(
                      fontFamily: kManropeExtraBold,
                      fontSize: 15,
                      color: kWhiteColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
