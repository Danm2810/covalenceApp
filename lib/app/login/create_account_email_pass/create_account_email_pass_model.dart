import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_account_email_pass_widget.dart'
    show CreateAccountEmailPassWidget;
import 'package:flutter/material.dart';

class CreateAccountEmailPassModel
    extends FlutterFlowModel<CreateAccountEmailPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;
  // State field(s) for password1 widget.
  FocusNode? password1FocusNode;
  TextEditingController? password1TextController;
  late bool password1Visibility;
  String? Function(BuildContext, String?)? password1TextControllerValidator;
  // Stores action output result for [Backend Call - API (CreateNewUser)] action in Button widget.
  ApiCallResponse? apiResultcreate;

  @override
  void initState(BuildContext context) {
    password2Visibility = false;
    password1Visibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();

    password1FocusNode?.dispose();
    password1TextController?.dispose();
  }
}
