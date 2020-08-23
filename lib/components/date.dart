import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  Date({this.dayAsNumber, this.dayAsString});

  final int dayAsNumber;
  final String dayAsString;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Text(dayAsNumber.toString()), Text(dayAsString)],
      ),
    );
  }
}
