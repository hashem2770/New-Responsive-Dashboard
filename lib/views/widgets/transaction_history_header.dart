import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';
class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History',style: AppStyles.styleSemiBold20(context),),
        OutlinedButton(
          onPressed: null,
          child: Text(
            'View All',
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ],
    );
  }
}
