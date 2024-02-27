import 'package:flutter/material.dart';

class CustomDateButton extends StatelessWidget {
  final int datePressed;
  final String day;

  const CustomDateButton({super.key, required this.datePressed, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xFF9C58CB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "$day $datePressed",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
