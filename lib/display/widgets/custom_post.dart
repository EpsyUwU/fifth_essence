import 'package:fifth_essence/display/widgets/custom_comment.dart';
import 'package:fifth_essence/display/widgets/custom_interaction_options.dart';
import 'package:fifth_essence/display/widgets/custom_user_infor.dart';
import 'package:flutter/material.dart';

class CustomPost extends StatelessWidget {
  const CustomPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomUserInfo(),
          const SizedBox(height: 10),
          const Text(
            "Hola esta es mi primera foto c:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 375,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
            ),
            child: const Icon(
              Icons.photo,
              size: 100,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const CustomInteractionOptions(),
          const SizedBox(height: 10),
          CustomComment(username: "Celeste uwu", comment: "Wooooooow esta muy bonitoooo!!!!"),
        ],
      ),
    );
  }
}
