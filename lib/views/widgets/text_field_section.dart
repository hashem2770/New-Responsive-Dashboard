import 'package:flutter/material.dart';

import 'custom_text_field.dart';
class TextFieldsSection extends StatelessWidget {
  const TextFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hint: "Search",
                label: 'Customer name',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: CustomTextField(
                hint: "Search",
                label: 'Customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hint: "Search",
                label: 'Item name',
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: CustomTextField(
                hint: "Search",
                label: 'Currency',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
