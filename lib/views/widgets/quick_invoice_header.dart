
import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context).copyWith(fontWeight: FontWeight.w900),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(
            Icons.add,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
