import '/app/homepage/calendar/calendar_component/calendar_component_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medication_tracker_widget.dart' show MedicationTrackerWidget;
import 'package:flutter/material.dart';

class MedicationTrackerModel extends FlutterFlowModel<MedicationTrackerWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  List<DateTime> datesToDisplay = [];
  void addToDatesToDisplay(DateTime item) => datesToDisplay.add(item);
  void removeFromDatesToDisplay(DateTime item) => datesToDisplay.remove(item);
  void removeAtIndexFromDatesToDisplay(int index) =>
      datesToDisplay.removeAt(index);
  void insertAtIndexInDatesToDisplay(int index, DateTime item) =>
      datesToDisplay.insert(index, item);
  void updateDatesToDisplayAtIndex(int index, Function(DateTime) updateFn) =>
      datesToDisplay[index] = updateFn(datesToDisplay[index]);

  List<TrackedMedicationStruct> displayMedications = [];
  void addToDisplayMedications(TrackedMedicationStruct item) =>
      displayMedications.add(item);
  void removeFromDisplayMedications(TrackedMedicationStruct item) =>
      displayMedications.remove(item);
  void removeAtIndexFromDisplayMedications(int index) =>
      displayMedications.removeAt(index);
  void insertAtIndexInDisplayMedications(
          int index, TrackedMedicationStruct item) =>
      displayMedications.insert(index, item);
  void updateDisplayMedicationsAtIndex(
          int index, Function(TrackedMedicationStruct) updateFn) =>
      displayMedications[index] = updateFn(displayMedications[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDates] action in MedicationTracker widget.
  List<DateTime>? currentWeek;
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
