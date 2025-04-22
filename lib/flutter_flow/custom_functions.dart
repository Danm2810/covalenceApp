import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/custom_auth/auth_util.dart';

DateTime? getFirstOfMonth() {
  // Gets the first date of the current month
  return DateTime.now()
      .toUtc()
      .subtract(Duration(days: DateTime.now().day - 1));
}

DateTime? getNextMonth(DateTime? currMonth) {
  // Gets the first date of the next month
  if (currMonth != null) {
    return DateTime(currMonth.year, currMonth.month + 1, currMonth.day);
  }
}

DateTime? getPrevMonth(DateTime? currMonth) {
  // Gets the first date of the previous month
  if (currMonth != null) {
    return DateTime(currMonth.year, currMonth.month - 1, currMonth.day);
  }
}
