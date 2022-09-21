import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

class TransactionsCard extends StatelessWidget {
  const TransactionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      height: size.height * 0.29,
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Transaction History',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: kManropeExtraBold,
                    fontSize: 16),
              ),
              const Spacer(),
              DropdownButton<String>(
                items: const [],
                onChanged: (String? item) {},
                hint: const Text(
                  'This month',
                  style: TextStyle(
                      fontFamily: kManropeBold,
                      fontSize: 11,
                      color: Colors.black),
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
              )
            ],
          ),
          gapH4,
          Row(
            children: const [
              gapW32,
              Text(
                'Name',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
              Spacer(),
              Text(
                'Date',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
              Spacer(),
              Text(
                'Time',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
              Spacer(),
              Text(
                'Points',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
            ],
          ),
          const Divider(
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
