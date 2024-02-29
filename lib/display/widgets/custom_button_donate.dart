import 'package:flutter/material.dart';

class CustomButtonDonate extends StatelessWidget {
  final String price;
  const CustomButtonDonate({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(87, 55, 172, 100),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: Text(
            '\$$price',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)
          ),
      ),
    );
  }
}
