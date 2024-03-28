import 'package:flutter/material.dart';

class IncomeDetailsModel {
  final String name;
  final String value;
  final Color color;

  IncomeDetailsModel(
      {required this.name, required this.value, required this.color});

  static List<IncomeDetailsModel> getIncomeDetails() {
    return [
      IncomeDetailsModel(
          name: 'Design service', value: '%25', color: Colors.tealAccent),
      IncomeDetailsModel(
          name: 'Design service', value: '%20', color: Colors.green),
      IncomeDetailsModel(
          name: 'Design service', value: '%10', color: Colors.red),
      IncomeDetailsModel(
          name: 'Design service', value: '%10', color: Colors.blueAccent),
    ];
  }
}
