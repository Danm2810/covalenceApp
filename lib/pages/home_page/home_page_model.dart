import '/components/calendar_component_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isWeek = true;

  List<DateTime> displayDates = [];
  void addToDisplayDates(DateTime item) => displayDates.add(item);
  void removeFromDisplayDates(DateTime item) => displayDates.remove(item);
  void removeAtIndexFromDisplayDates(int index) => displayDates.removeAt(index);
  void insertAtIndexInDisplayDates(int index, DateTime item) =>
      displayDates.insert(index, item);
  void updateDisplayDatesAtIndex(int index, Function(DateTime) updateFn) =>
      displayDates[index] = updateFn(displayDates[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDates] action in HomePage widget.
  List<DateTime>? dates;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for CalendarComponent component.
  late CalendarComponentModel calendarComponentModel;
  // Stores action output result for [Custom Action - getDates] action in ToggleIcon widget.
  List<DateTime>? updatedDates;

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
