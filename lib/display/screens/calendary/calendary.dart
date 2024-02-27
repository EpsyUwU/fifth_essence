import 'package:flutter/material.dart';
import '../../widgets/custom_calendar.dart';
import '../../widgets/custom_notice_wdg.dart';
import '../../widgets/custom_date.dart';

class Calendary extends StatelessWidget {

  const Calendary({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF5737AC)
                , Color(0xFF392755)],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomCalendar(),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      child: CustomDateButton(datePressed: 27, day: 'Mon'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      child: Text('Full Moon', style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    SizedBox(
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFF9C58CB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.notifications, color: Color(0xFF392755), size: 25),
                      )
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      CustomNotice(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        )
      ],
    );
  }
}
