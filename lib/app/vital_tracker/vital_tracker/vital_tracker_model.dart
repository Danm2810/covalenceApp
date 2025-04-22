import '/app/vital_tracker/tracked_vital_alph/tracked_vital_alph_widget.dart';
import '/app/vital_tracker/tracked_vital_date/tracked_vital_date_widget.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'vital_tracker_widget.dart' show VitalTrackerWidget;
import 'package:flutter/material.dart';

class VitalTrackerModel extends FlutterFlowModel<VitalTrackerWidget> {
  ///  Local state fields for this page.

  List<TrackedVitalStruct> displayVitals = [];
  void addToDisplayVitals(TrackedVitalStruct item) => displayVitals.add(item);
  void removeFromDisplayVitals(TrackedVitalStruct item) =>
      displayVitals.remove(item);
  void removeAtIndexFromDisplayVitals(int index) =>
      displayVitals.removeAt(index);
  void insertAtIndexInDisplayVitals(int index, TrackedVitalStruct item) =>
      displayVitals.insert(index, item);
  void updateDisplayVitalsAtIndex(
          int index, Function(TrackedVitalStruct) updateFn) =>
      displayVitals[index] = updateFn(displayVitals[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in VitalTracker widget.
  List<VitalListRow>? vitalsList;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for TrackedVitalDate dynamic component.
  late FlutterFlowDynamicModels<TrackedVitalDateModel> trackedVitalDateModels;
  // Models for TrackedVitalAlph dynamic component.
  late FlutterFlowDynamicModels<TrackedVitalAlphModel> trackedVitalAlphModels;

  @override
  void initState(BuildContext context) {
    trackedVitalDateModels =
        FlutterFlowDynamicModels(() => TrackedVitalDateModel());
    trackedVitalAlphModels =
        FlutterFlowDynamicModels(() => TrackedVitalAlphModel());
  }

  @override
  void dispose() {
    trackedVitalDateModels.dispose();
    trackedVitalAlphModels.dispose();
  }
}
