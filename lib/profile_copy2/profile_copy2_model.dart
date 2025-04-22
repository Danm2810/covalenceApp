import '/flutter_flow/flutter_flow_util.dart';
import 'profile_copy2_widget.dart' show ProfileCopy2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProfileCopy2Model extends FlutterFlowModel<ProfileCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }
}
