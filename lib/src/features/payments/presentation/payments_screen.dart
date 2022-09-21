import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Payments',
          style: TextStyle(
              fontFamily: kManropeExtraBold, fontSize: 32, color: kBlueColor),
        ),
      ),
    );
  }
}
