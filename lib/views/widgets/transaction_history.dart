import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          TransactionHistoryHeader(),
          SizedBox(height: 8),
          TransactionHistoryListView(),
        ],
      ),
    );
  }
}
