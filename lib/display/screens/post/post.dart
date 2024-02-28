import 'package:fifth_essence/display/widgets/category_buttons.dart';
import 'package:fifth_essence/display/widgets/custom_post.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryButtons(),
              SizedBox(height: 15),
              Text("All posts", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
              CustomPost(),
              CustomPost()
            ],
          ),
        )
      ) //
    );
  }
}
