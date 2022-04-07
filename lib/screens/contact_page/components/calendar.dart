import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/size_config.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(148),
      width: double.infinity,
      color: ConstColor.darker,
      child: CalendarAgenda(
        initialDate: DateTime.now(),
        dateColor: ConstColor.calendarText,
        selectedDateColor: ConstColor.background,
        backgroundColor: ConstColor.darker,
        firstDate: DateTime.now().subtract(const Duration(days: 140)),
        lastDate: DateTime.now().add(const Duration(days: 55)),
        onDateSelected: (date) {},
      ),
    );
  }
}
