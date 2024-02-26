import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData? icon;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        prefixIcon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}
