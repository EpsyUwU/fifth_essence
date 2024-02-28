import 'package:flutter/material.dart';

class CustomInteractionOptions extends StatelessWidget {
  const CustomInteractionOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10,),
        GestureDetector(
          onTap: () {
            print("Like button pressed");
          },
          child: const Row(
            children: [
              Icon(Icons.favorite_border, color: Color.fromRGBO(156, 88, 203, 100), size: 22),
              SizedBox(width: 5),
              Text("Like", style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          )
        ),
        const SizedBox(width: 10),
        GestureDetector(
            onTap: () {
              print("Share button pressed");
            },
            child: const Row(
              children: [
                Icon(Icons.share, color: Color.fromRGBO(156, 88, 203, 100), size: 22),
                SizedBox(width: 5),
                Text("Share", style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            )
        ),
        const SizedBox(width: 10),
        GestureDetector(
            onTap: () {
              print("Comment button pressed");
            },
            child: const Row(
              children: [
                Icon(Icons.mode_comment_outlined, color: Color.fromRGBO(156, 88, 203, 100), size: 22),
                SizedBox(width: 5),
                Text("Comment", style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            )
        ),
      ],
    );
  }
}
