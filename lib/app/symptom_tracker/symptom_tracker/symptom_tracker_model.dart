import '/app/symptom_tracker/tracked_symptom_alph/tracked_symptom_alph_widget.dart';
import '/app/symptom_tracker/tracked_symptom_date/tracked_symptom_date_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'symptom_tracker_widget.dart' show SymptomTrackerWidget;
import 'package:flutter/material.dart';

class SymptomTrackerModel extends FlutterFlowModel<SymptomTrackerWidget> {
  ///  Local state fields for this page.

  List<TrackedSymptomStruct> displaySymptoms = [];
  void addToDisplaySymptoms(TrackedSymptomStruct item) =>
      displaySymptoms.add(item);
  void removeFromDisplaySymptoms(TrackedSymptomStruct item) =>
      displaySymptoms.remove(item);
  void removeAtIndexFromDisplaySymptoms(int index) =>
      displaySymptoms.removeAt(index);
  void insertAtIndexInDisplaySymptoms(int index, TrackedSymptomStruct item) =>
      displaySymptoms.insert(index, item);
  void updateDisplaySymptomsAtIndex(
          int index, Function(TrackedSymptomStruct) updateFn) =>
      displaySymptoms[index] = updateFn(displaySymptoms[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for TrackedSymptomDate dynamic component.
  late FlutterFlowDynamicModels<TrackedSymptomDateModel>
      trackedSymptomDateModels;
  // Models for TrackedSymptomAlph dynamic component.
  late FlutterFlowDynamicModels<TrackedSymptomAlphModel>
      trackedSymptomAlphModels;

  @override
  void initState(BuildContext context) {
    trackedSymptomDateModels =
        FlutterFlowDynamicModels(() => TrackedSymptomDateModel());
    trackedSymptomAlphModels =
        FlutterFlowDynamicModels(() => TrackedSymptomAlphModel());
  }

  @override
  void dispose() {
    trackedSymptomDateModels.dispose();
    trackedSymptomAlphModels.dispose();
  }
}
