import 'package:flutter/material.dart';

class CustomViewCount extends StatelessWidget {
  const CustomViewCount({super.key, required this.viewers});

  final double viewers;

  @override
  Widget build(BuildContext context) {

    String viewersCountSymbol = "";
    double viewersCount = viewers;

    if(viewers <= 1000) {
      viewersCountSymbol = "K";
      viewersCount = viewers / 1000;
    }

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(156, 88, 203, 100),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 130,
          height: 40,
          child: Align(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                  children: [
                    const Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.white,
                    ),
                    const Spacer(),
                    Text(
                        viewersCount.toString() + viewersCountSymbol,
                        style: const TextStyle(
                          color: Colors.white,
                        )
                    ),
                    const Spacer(),
                    Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(87, 55, 172, 100),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 45,
                        height: 20,
                        child: const Align(
                          child: Text(
                              "Live",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                            ),
                          ),
                        )
                    )
                  ]
              ),
            )
          ),
        )
      ],
    );
  }
}
