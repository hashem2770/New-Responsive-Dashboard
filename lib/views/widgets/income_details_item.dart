import 'package:flutter/material.dart';


class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem(
      {super.key,
        required this.title,
        required this.amount,
        required this.color});

  final String title;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(color: color, shape: const OvalBorder())),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(amount),
    );
  }
}
