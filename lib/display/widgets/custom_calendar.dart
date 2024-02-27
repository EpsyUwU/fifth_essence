import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          titleTextStyle: TextStyle(
            color: Colors.white
          ),
          leftChevronIcon: Icon(
              Icons.chevron_left_rounded,
              color: Colors.white
          ),
          rightChevronIcon: Icon(
              Icons.chevron_right_rounded,
              color: Colors.white
          )
        ),
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Color(0xff9C58CB),
            shape: BoxShape.circle
          ),
          defaultTextStyle: TextStyle(
            color: Color(0xffF3F2F0),
          ),
          outsideTextStyle: TextStyle(
            color: Color(0xff989898)
          ),
          weekendTextStyle: TextStyle(
            color: Color(0xffF3F2F0)
          ),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(
              color: Color(0xffF3F2F0)
          ),
          weekendStyle: TextStyle(
              color: Color(0xffF3F2F0)
          ),
        ),
      )
    );
  }
}

