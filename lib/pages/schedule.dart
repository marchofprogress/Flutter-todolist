import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/shared/textStyles.dart';
import 'package:todo_list/components/datePicker.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Text(
        'Schedule',
        style: kAppBarTextStyle,
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          //          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        )
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFFBCA2), Color(0xFFFFECD2)],
                begin: FractionalOffset(0, 0.5),
                end: FractionalOffset(1, 0.5),
                stops: [0, 1],
                tileMode: TileMode.clamp)),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: Expanded(
          child: Column(children: [
            Text(DateFormat('MMM, yyyy').format(DateTime.now())),
            Expanded(child: DatePicker())
          ]),
        ),
      ),
    ));
  }
}
