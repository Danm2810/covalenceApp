// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dart_date/dart_date.dart';

// Gets the dates to display on home page based on whether isWeek is toggled
Future<List<DateTime>> getDates(bool? isWeek) async {
  List<DateTime> dates;
  DateTime today = DateTime.now();
  if (isWeek != null) {
    if (isWeek) {
      DateTime startOfWeek = today.startOfWeek;
      // returns the seven days of the current week
      return List.generate(
          7, (index) => startOfWeek.add(Duration(days: index)));
    } else {
      DateTime startOfMonth = today.startOfMonth;
      DateTime startDate =
          startOfMonth.subtract(Duration(days: startOfMonth.weekday % 7));
      int daysInMonth = today.endOfMonth.day; // Get last day of the month
      int totalDaysToShow = daysInMonth + startOfMonth.weekday % 7;
      // returns the days in the current month
      return List.generate(
          totalDaysToShow, (index) => startDate.addDays(index));
    }
  }
  return [];
}
