import '/app/homepage/calendar/calendar_component/calendar_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calendar_page_widget.dart' show CalendarPageWidget;
import 'package:flutter/material.dart';

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
  // Stores action output result for [Custom Action - getMonthDates] action in Icon widget.
  List<DateTime>? prevDates;
  // Stores action output result for [Custom Action - getMonthDates] action in Icon widget.
  List<DateTime>? nextDates;
  // Model for CalendarComponent component.
  late CalendarComponentModel calendarComponentModel;

  @override
  void initState(BuildContext context) {
    calendarComponentModel =
        createModel(context, () => CalendarComponentModel());
  }

  @override
  void dispose() {
    calendarComponentModel.dispose();
  }
}
