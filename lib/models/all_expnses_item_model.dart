import 'package:flutter/material.dart';

class AllExpensesItemModel {
  final Color arrowIconColor;
  final Color cardColor;
  final Color iconBackgroundColor;
  final Color moneyColor;
  final Color labelColor;
  final String imagePath;
  final String label;


  const AllExpensesItemModel( {
    required this.labelColor,
    required this.moneyColor,
    required this.iconBackgroundColor,
    required this.arrowIconColor,
    required this.cardColor,
    required this.imagePath,
    required this.label,
  });
}
