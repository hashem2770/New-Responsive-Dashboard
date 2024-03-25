import 'package:flutter/material.dart';
import 'package:responsive_dashboard/helper/methods/container_decoration.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';

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
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
