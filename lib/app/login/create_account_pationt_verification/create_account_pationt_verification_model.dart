import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_account_pationt_verification_widget.dart'
    show CreateAccountPationtVerificationWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateAccountPationtVerificationModel
    extends FlutterFlowModel<CreateAccountPationtVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for clinicSearch widget.
  FocusNode? clinicSearchFocusNode;
  TextEditingController? clinicSearchTextController;
  String? Function(BuildContext, String?)? clinicSearchTextControllerValidator;
  // State field(s) for patientID widget.
  FocusNode? patientIDFocusNode;
  TextEditingController? patientIDTextController;
  String? Function(BuildContext, String?)? patientIDTextControllerValidator;
  // State field(s) for birthDate widget.
  FocusNode? birthDateFocusNode;
  TextEditingController? birthDateTextController;
  final birthDateMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? birthDateTextControllerValidator;
  // State field(s) for ssn widget.
  FocusNode? ssnFocusNode;
  TextEditingController? ssnTextController;
  late bool ssnVisibility;
  String? Function(BuildContext, String?)? ssnTextControllerValidator;
  // Stores action output result for [Backend Call - API (NewUserValidation)] action in continueBttn widget.
  ApiCallResponse? apiResultvalidToken;

  @override
  void initState(BuildContext context) {
    ssnVisibility = false;
  }

  @override
  void dispose() {
    clinicSearchFocusNode?.dispose();
    clinicSearchTextController?.dispose();

    patientIDFocusNode?.dispose();
    patientIDTextController?.dispose();

    birthDateFocusNode?.dispose();
    birthDateTextController?.dispose();

    ssnFocusNode?.dispose();
    ssnTextController?.dispose();
  }
}
