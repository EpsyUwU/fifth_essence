import 'package:fifth_essence/display/widgets/category_buttons.dart';
import 'package:fifth_essence/display/widgets/custom_card_streams.dart';
import 'package:flutter/material.dart';

class Streams extends StatelessWidget {
  const Streams({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF5737AC), Color(0xFF392755)],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryButtons(),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("All streams", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCardStream(),
                    CustomCardStream(),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCardStream(),
                    CustomCardStream(),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCardStream(),
                    CustomCardStream(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
