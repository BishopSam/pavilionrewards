import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Cards',
          style: TextStyle(
              fontFamily: kManropeExtraBold, fontSize: 32, color: kBlueColor),
        ),
      ),
    );
  }
}
