import '/components/calendar_component_widget.dart';
import '/components/new_event_modal_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'calendar_page_widget.dart' show CalendarPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalendarPageModel extends FlutterFlowModel<CalendarPageWidget> {
  ///  Local state fields for this page.

  DateTime? month;

  List<DateTime> displayDates = [];
  void addToDisplayDates(DateTime item) => displayDates.add(item);
  void removeFromDisplayDates(DateTime item) => displayDates.remove(item);
  void removeAtIndexFromDisplayDates(int index) => displayDates.removeAt(index);
  void insertAtIndexInDisplayDates(int index, DateTime item) =>
      displayDates.insert(index, item);
  void updateDisplayDatesAtIndex(int index, Function(DateTime) updateFn) =>
      displayDates[index] = updateFn(displayDates[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDates] action in CalendarPage widget.
  List<DateTime>? startingDates;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Stores action output result for [Custom Action - getMonthDates] action in Icon widget.
  List<DateTime>? prevDates;
  // Stores action output result for [Custom Action - getMonthDates] action in Icon widget.
  List<DateTime>? nextDates;
  // Model for CalendarComponent component.
  late CalendarComponentModel calendarComponentModel;

  @override
  void initState(BuildContext context) {
    topBarModel = createModel(context, () => TopBarModel());
    calendarComponentModel =
        createModel(context, () => CalendarComponentModel());
  }

  @override
  void dispose() {
    topBarModel.dispose();
    calendarComponentModel.dispose();
  }
}
