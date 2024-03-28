import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';


class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key,
        required this.title,
        required this.date,
        required this.amount});

  final String title;
  final String date;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(date),
        trailing: Text(
          amount,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.red),
        ),
      ),
    );
  }
}
