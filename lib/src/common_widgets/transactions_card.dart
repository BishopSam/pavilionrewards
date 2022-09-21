import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pavilion_rewards/src/constants/app_sizes.dart';
import 'package:pavilion_rewards/src/constants/colors.dart';
import 'package:pavilion_rewards/src/constants/fonts.dart';
import 'package:pavilion_rewards/src/features/payments/domain/payment.dart';

class TransactionsCard extends StatefulWidget {
  const TransactionsCard({Key? key, required this.payments}) : super(key: key);
  final List<Payment> payments;

  @override
  State<TransactionsCard> createState() => _TransactionsCardState();
}

class _TransactionsCardState extends State<TransactionsCard> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  final Duration _scrollDuration = const Duration(milliseconds: 300);
  final Curve _scrollCurve = Curves.easeInOut;

  int _autoScrollIncrement = 1;
  int _currentScrollIndex = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) async {
      _autoScrollIncrement = _currentScrollIndex == 0
          ? 1
          : _currentScrollIndex == widget.payments.length - 1
              ? -1
              : _autoScrollIncrement;
      _currentScrollIndex += _autoScrollIncrement;
      _animateToIndex(_currentScrollIndex);
      setState(() {});
    });
  }

  void _animateToIndex(int index) {
    _scrollController.animateTo(
      index.toDouble() * 30,
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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
              gapW80,
              Text(
                'Date',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
              gapW48,
              Text(
                'Time',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
              gapW48,
              Text(
                'Points',
                style: TextStyle(
                    fontFamily: kManropeRegular,
                    color: kLightBlueColor,
                    fontSize: 7.7),
              ),
              gapW32,
            ],
          ),
          const Divider(
            color: Colors.black12,
          ),
          Expanded(
            flex: 3,
            child: ListView(
              controller: _scrollController,
              //itemExtent: _itemExtent,
              physics: const BouncingScrollPhysics(),
              children: [
                for (var payment in widget.payments) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 17,
                          backgroundColor: Color(0xff8DD7A8),
                          child: Icon(
                            Icons.card_giftcard,
                            color: kPinkColor,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          payment.paymentTitle,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: kManropeBold,
                            fontSize: 12.38,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          payment.paymentDate,
                          style: const TextStyle(
                            color: Colors.black26,
                            fontFamily: kManropeRegular,
                            fontSize: 9.29,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          payment.paymentTime,
                          style: const TextStyle(
                            color: Colors.black26,
                            fontFamily: kManropeRegular,
                            fontSize: 9.29,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          payment.isProfit
                              ? '+${payment.paymentPoints}'
                              : '-${payment.paymentPoints}',
                          style: TextStyle(
                            color: payment.isProfit ? Colors.green : kRedColor,
                            fontFamily: kManropeBold,
                            fontSize: 16.92,
                          ),
                        ),
                      ],
                    ),
                  )
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}
