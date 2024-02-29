import 'package:flutter/material.dart';

class CustomButtonFollow extends StatelessWidget {
  const CustomButtonFollow({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79,
      height: 30,
      child: ElevatedButton(onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(57, 39, 85, 100), // Este es el color de fondo del botón
          ),
          child: const Text(
              "follow",
              style: TextStyle(
                fontSize: 11,
                color: Colors.white,
              )
          )
      ),
    );
  }
}
