import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';
class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Income',style: AppStyles.styleSemiBold16(context),),
          Text('Monthly',style: AppStyles.styleRegular16(context),)
        ]
    );
  }
}
