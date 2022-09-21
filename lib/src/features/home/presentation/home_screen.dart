import 'package:flutter/material.dart';

import 'package:pavilion_rewards/src/features/home/presentation/widgets/app_bar_widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: const [HomeAppBar()],
        ),
      )),
    );
  }
}
