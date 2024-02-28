
import 'package:fifth_essence/display/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCommentField extends StatelessWidget {
  const CustomCommentField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(87, 55, 172, 100),
              borderRadius: BorderRadius.circular(90),
            ),
            child: const Icon(
              size: 17,
              Icons.share,
              color: Colors.white,
            ),
          ),
        ),
         Row(
          children: [
            Expanded(
                child: Container(
                  width: 330,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(87, 55, 172, 100),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "   Write a comment...",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                            ),
                          )
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(156, 88, 203, 100),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: const Icon(
                          size: 17,
                          Icons.send_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  )
                )
            ),
            const SizedBox(width: 7),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(87, 55, 172, 100),
                borderRadius: BorderRadius.circular(90),
              ),
              child: const Icon(
                size: 17,
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 7),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(87, 55, 172, 100),
                borderRadius: BorderRadius.circular(90),
              ),
              child: const Icon(
                size: 17,
                Icons.wallet_giftcard,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
