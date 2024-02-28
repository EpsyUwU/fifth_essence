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
    return Container(
      height: 61,
      width: 336,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xFF9C58CB), // Color del borde normal
              width: 2.0, // Ancho del borde normal
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xFF9C58CB), // Color del borde enfocado
              width: 2.0, // Ancho del borde enfocado
            ),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white), // Color del texto de etiqueta
          prefixIcon: icon != null ? Icon(icon, color: Colors.white) : null, // Color del ícono
        ),
      ),
    );
  }

}
