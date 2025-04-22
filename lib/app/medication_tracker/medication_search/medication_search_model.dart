import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medication_search_widget.dart' show MedicationSearchWidget;
import 'package:flutter/material.dart';

class MedicationSearchModel extends FlutterFlowModel<MedicationSearchWidget> {
  ///  Local state fields for this page.

  List<MedicationResultsStruct> resultsList = [];
  void addToResultsList(MedicationResultsStruct item) => resultsList.add(item);
  void removeFromResultsList(MedicationResultsStruct item) =>
      resultsList.remove(item);
  void removeAtIndexFromResultsList(int index) => resultsList.removeAt(index);
  void insertAtIndexInResultsList(int index, MedicationResultsStruct item) =>
      resultsList.insert(index, item);
  void updateResultsListAtIndex(
          int index, Function(MedicationResultsStruct) updateFn) =>
      resultsList[index] = updateFn(resultsList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (SearchMedicationsList)] action in IconButton widget.
  ApiCallResponse? apiResultspe;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
