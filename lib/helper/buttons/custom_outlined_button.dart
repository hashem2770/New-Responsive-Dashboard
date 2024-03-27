import 'package:flutter/material.dart';

import '../../utlis/app_styles.dart';


class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key, required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: null,
        child: Text(
          label,
          style: AppStyles.styleBold16(context),
        ),
      ),
    );
  }
}
