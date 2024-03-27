import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive? 32 : 8,
      height: 8,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: isActive? Colors.blue : Colors.grey,

      )
    );
  }
}
