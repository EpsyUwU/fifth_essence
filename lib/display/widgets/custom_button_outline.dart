import 'package:flutter/material.dart';

class CustomButtonOutline extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final String? imageAsset;

  const CustomButtonOutline({super.key, required this.onPressed, required this.text, this.icon, this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF9C58CB), width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: Alignment.centerLeft,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (imageAsset != null) Image.asset(imageAsset!, height: 30),
            if (icon != null) Icon(icon, size: 30),
            const SizedBox(width: 20),
            Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}



