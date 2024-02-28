import 'package:fifth_essence/display/widgets/category_buttons.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryButtons(),
            const SizedBox(height: 15),
            Text("All posts", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        ),
      )
    );
  }
}
