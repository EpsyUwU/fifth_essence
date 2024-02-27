import 'package:flutter/material.dart';

class CustomNotice extends StatelessWidget {
  const CustomNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/image/stars.jpg',
        width: 320,
      )
    );
  }
}
