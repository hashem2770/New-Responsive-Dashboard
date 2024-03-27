import 'package:flutter/material.dart';

import '../../helper/buttons/custom_filled_button.dart';
import '../../helper/buttons/custom_outlined_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        CustomOutlinedButton(
          label: 'Add More Details',
        ),
        SizedBox(
          width: 8,
        ),
        CustomFilledButton(
          label: 'Send Money',
        ),
      ],
    );
  }
}
