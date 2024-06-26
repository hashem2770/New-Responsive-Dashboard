import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history.dart';

import 'my_cards_section.dart';
class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Column(
        children: [
          SizedBox(height: 14),
          MyCardsSection(),
          SizedBox(height: 24),
          TransactionHistory(),
        ],
      ),
    );
  }
}
