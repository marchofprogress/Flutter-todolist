import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/components/date.dart';
import 'dart:developer';

class DatePicker extends StatelessWidget {
  DatePicker({this.onPressed}) {
    setDates();
  }
  final Set<Date> _dateList = Set<Date>();

  final Function onPressed;

  void setDates() {
    final DateTime today = DateTime.now();
    for (int i = -30; i < 90; i++) {
      _dateList.add(Date(
          dayAsNumber: int.parse(
              DateFormat('d').format(today.add(new Duration(days: i)))),
          dayAsString:
              DateFormat('EEE').format(today.add(new Duration(days: i)))));
    }
    log(DateFormat('d').format(today.add(new Duration(days: 10))));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Date(
              dayAsNumber: _dateList.elementAt(index).dayAsNumber,
              dayAsString: _dateList.elementAt(index).dayAsString,
            ),
          );
        },
        itemCount: _dateList.length,
        scrollDirection: Axis.horizontal);
  }
}
