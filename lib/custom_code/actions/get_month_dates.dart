// Automatic FlutterFlow imports
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dart_date/dart_date.dart';

Future<List<DateTime>> getMonthDates(DateTime? firstOfMonth) async {
  List<DateTime> allDates = [];
  if (firstOfMonth != null) {
    DateTime startDate =
        firstOfMonth.subtract(Duration(days: firstOfMonth.weekday % 7));
    DateTime endDate = firstOfMonth.endOfMonth
        .add(Duration(days: 6 - firstOfMonth.endOfMonth.weekday % 7));
    for (DateTime day = startDate;
        !day.isAfter(endDate);
        day = day.add(Duration(days: 1))) {
      allDates.add(day);
    }
  }
  return allDates;
}
