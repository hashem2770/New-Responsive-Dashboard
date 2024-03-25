import 'package:flutter/material.dart';
import '../../models/latest_transaction_model.dart';
import '../../utlis/app_styles.dart';
import 'latest_transaction_item.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleSemiBold16(context),
        ),
        const SizedBox(height: 8),
        // instead of making listview.builder and facing the annoying height error
        // the listview.separated is used in a comment down below, tested and worked fine
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: LatestTransactionModel.latestTransactions
                .map((e) => IntrinsicWidth(
              child: LatestTransactionItem(client: e),
            ))
                .toList(),
          ),
        )
      ],
    );
  }
}