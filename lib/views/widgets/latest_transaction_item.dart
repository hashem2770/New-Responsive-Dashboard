
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/latest_transaction_model.dart';
import '../../utlis/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.client});

  final LatestTransactionModel client;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IntrinsicWidth(
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(client.avatar),
            title: Text(
              client.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleSemiBold16(context),
            ),
            subtitle: Text(
              client.email,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
