import 'package:flutter/material.dart';

class CustomButtonFilled extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButtonFilled({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF9C58CB), // Este es el color de fondo del botón
          foregroundColor: Colors.white, // Este es el color del texto e ícono del botón
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: const BorderSide(color: Color(0xFF9C58CB), width: 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            Text(text, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
