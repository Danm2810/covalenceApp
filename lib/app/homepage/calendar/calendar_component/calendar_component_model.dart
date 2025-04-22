import '/app/homepage/calendar/day_component/day_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calendar_component_widget.dart' show CalendarComponentWidget;
import 'package:flutter/material.dart';

class CalendarComponentModel extends FlutterFlowModel<CalendarComponentWidget> {
  ///  Local state fields for this component.

  DateTime? selectedDate;

  ///  State fields for stateful widgets in this component.

  // Models for DayComponent dynamic component.
  late FlutterFlowDynamicModels<DayComponentModel> dayComponentModels;

  @override
  void initState(BuildContext context) {
    dayComponentModels = FlutterFlowDynamicModels(() => DayComponentModel());
  }

  @override
  void dispose() {
    dayComponentModels.dispose();
  }
}
