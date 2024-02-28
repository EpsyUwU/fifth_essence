import 'package:fifth_essence/display/widgets/custom_comment.dart';
import 'package:fifth_essence/display/widgets/custom_comment_field.dart';
import 'package:fifth_essence/display/widgets/custom_user_infor.dart';
import 'package:fifth_essence/display/widgets/custom_view_count.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamView extends StatelessWidget {
  const StreamView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.white,
                ),
                const CustomUserInfo(),
                SizedBox(
                  width: 79,
                  height: 30,
                  child: ElevatedButton(onPressed: popo,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(57, 39, 85, 100), // Este es el color de fondo del botón
                      ),
                      child: const Text(
                          "follow",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                          )
                      )
                  ),
                ),
                const Spacer(),
                const CustomViewCount(viewers: 1000)
              ]
            ),
            const SizedBox(height: 20,),
            Container(
              width: 375,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(
                Icons.video_camera_front_outlined,
                size: 100,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),
            const Expanded(
              child: SingleChildScrollView(
                  child: Column(
                      children: [
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu ",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                        CustomComment(
                            username: "Celeste uwu",
                            comment: "I love this song"
                        ),
                      ]
                  )
              ),
            ),
            CustomCommentField()
          ],
        ),
      )
    );
  }

  void popo() {
    print("popo");
  }
}
