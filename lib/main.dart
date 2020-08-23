import 'package:flutter/material.dart';
import 'package:todo_list/pages/schedule.dart';

void main() => runApp(TodoList());

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: Color(0xFFFFFFFF)),
        home: SchedulePage());
  }
}
