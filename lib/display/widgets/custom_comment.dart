import 'package:fifth_essence/display/consts/ScreenProperties.dart';
import 'package:flutter/material.dart';

class CustomComment extends StatelessWidget {
  const CustomComment({super.key, required this.username, required this.comment});

  final String username;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(90),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.black,
                )
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(87, 55, 172, 100),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    width: ScreenProperties.getScreenSize(context).width / 1.3,
                    height: 50,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              username,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              comment,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                ),
                SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "5 min",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )
                        ),
                        SizedBox(width: 10),
                        Text(
                            "Me gusta",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )
                        ),
                        SizedBox(width: 11),
                        Text(
                            "Responder",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )
                        ),
                      ]
                  ),
                )
              ],
            )
          ]
      ),
    );
  }
}
