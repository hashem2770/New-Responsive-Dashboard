
import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key, required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment:  Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
        ),
        child: Text(
          label,
          style: AppStyles.styleMedium20(context),
        ),
      ),
    );
  }
}
