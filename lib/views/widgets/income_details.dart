import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';

import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: IncomeDetailsModel.getIncomeDetails().length,
      itemBuilder: (context, index) {
        final items = IncomeDetailsModel.getIncomeDetails()[index];
        return IncomeDetailsItem(
          title: items.name,
          amount: items.value,
          color: items.color,
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 4),
    );
  }
}
