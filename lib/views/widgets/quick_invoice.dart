import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helper/methods/container_decoration.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';

import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 18,
      ),
      decoration: buildShapeDecoration(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12),
          LatestTransactionSection(),
        ],
      ),
    );
  }
}



/*
*  SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.5,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var client = LatestTransactionModel.latestTransactions[index];
              return LatestTransactionItem(client: client);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemCount: LatestTransactionModel.latestTransactions.length,
          ),
        ),*/
