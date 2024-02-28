import 'package:flutter/material.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(90),
          ),
        ),
        const SizedBox(width: 10),
        const Align(
          alignment: Alignment.centerLeft,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Jatamatza",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    )
                ),
                Text(
                    "1.5K Followers",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    )
                ),
              ]
          ),
        ),
        const SizedBox(width: 10),
      ]
    );
  }
}
