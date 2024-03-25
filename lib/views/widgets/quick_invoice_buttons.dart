
import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: null,
            child: Text(
              'Add more details',
              style: AppStyles.styleBold16(context),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment:  Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Text(
              'Send Money',
              style: AppStyles.styleMedium20(context),
            ),
          ),
        ),
      ],
    );
  }
}
