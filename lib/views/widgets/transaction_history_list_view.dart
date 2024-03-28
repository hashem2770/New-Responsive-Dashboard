import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_item.dart';

import '../../models/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: TransactionHistoryModel.transactionHistoryList.length,
        itemBuilder: (context, index) {
          return TransactionHistoryItem(
            title: TransactionHistoryModel.transactionHistoryList[index].title,
            date: TransactionHistoryModel.transactionHistoryList[index].date,
            amount:
            TransactionHistoryModel.transactionHistoryList[index].amount,
          );
        },
      ),
    );
  }
}
