import '/app/badges/badges_entry/badges_entry_widget.dart';
import '/app/homepage/calendar/calendar_component/calendar_component_widget.dart';
import '/app/homepage/top_bar/top_bar_widget.dart';
import '/app/test_results/test_results/test_results_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<EventStruct> displayEvents = [];
  void addToDisplayEvents(EventStruct item) => displayEvents.add(item);
  void removeFromDisplayEvents(EventStruct item) => displayEvents.remove(item);
  void removeAtIndexFromDisplayEvents(int index) =>
      displayEvents.removeAt(index);
  void insertAtIndexInDisplayEvents(int index, EventStruct item) =>
      displayEvents.insert(index, item);
  void updateDisplayEventsAtIndex(int index, Function(EventStruct) updateFn) =>
      displayEvents[index] = updateFn(displayEvents[index]);

  List<DateTime> displayDates = [];
  void addToDisplayDates(DateTime item) => displayDates.add(item);
  void removeFromDisplayDates(DateTime item) => displayDates.remove(item);
  void removeAtIndexFromDisplayDates(int index) => displayDates.removeAt(index);
  void insertAtIndexInDisplayDates(int index, DateTime item) =>
      displayDates.insert(index, item);
  void updateDisplayDatesAtIndex(int index, Function(DateTime) updateFn) =>
      displayDates[index] = updateFn(displayDates[index]);

  bool expanded = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDates] action in HomePage widget.
  List<DateTime>? dates;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for CalendarComponent component.
  late CalendarComponentModel calendarComponentModel;
  // Model for testResults component.
  late TestResultsModel testResultsModel;
  // Model for BadgesEntry component.
  late BadgesEntryModel badgesEntryModel;

  @override
  void initState(BuildContext context) {
    topBarModel = createModel(context, () => TopBarModel());
    calendarComponentModel =
        createModel(context, () => CalendarComponentModel());
    testResultsModel = createModel(context, () => TestResultsModel());
    badgesEntryModel = createModel(context, () => BadgesEntryModel());
  }

  @override
  void dispose() {
    topBarModel.dispose();
    calendarComponentModel.dispose();
    testResultsModel.dispose();
    badgesEntryModel.dispose();
  }
}
