import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';

import '../constants/app_sizes.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.24,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kBlueColor,
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
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(16)),
                child: SvgPicture.asset(
                  'assets/images/right_ellipse.svg',
                )),
          )
        ],
      ),
    );
  }
}
