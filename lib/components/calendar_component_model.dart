import '/components/day_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'calendar_component_widget.dart' show CalendarComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
