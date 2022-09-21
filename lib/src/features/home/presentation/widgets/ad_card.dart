import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

import '../../../../constants/app_sizes.dart';

class AdCard extends StatelessWidget {
  const AdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.p12),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff5143D2),
            Color(0xff491B84),
          ],
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH4,
              const Text(
                'Congratulations!!',
                style: TextStyle(
                    fontFamily: kManropeBold, color: kWhiteColor, fontSize: 15),
              ),
              Row(
                children: const [
                  Text(
                    'You\'ve completed all your tasks for the week and you won ',
                    style: TextStyle(
                        fontFamily: kManropeRegular,
                        color: kWhiteColor,
                        fontSize: 8),
                  ),
                  Text(
                    '150 points',
                    style: TextStyle(
                        fontFamily: kManropeRegular,
                        color: kPinkColor,
                        fontSize: 8),
                  ),
                ],
              ),
              gapH12,
              OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(Sizes.p60, Sizes.p32),
                    primary: Colors.white,
                    side: const BorderSide(color: kDarkBlueColor)),
                child: const Text(
                  'Redeem Now!',
                  style: TextStyle(
                      fontFamily: kManropeRegular,
                      color: kDarkBlueColor,
                      fontSize: 10),
                ),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
