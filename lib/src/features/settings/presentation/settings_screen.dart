
import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';

import '../../../constants/colors.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Settings',
          style: TextStyle(
              fontFamily: kManropeExtraBold, fontSize: 32, color: kBlueColor),
        ),
      ),
    );
  }
}