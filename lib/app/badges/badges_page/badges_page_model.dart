import '/app/badges/badge/badge_widget.dart';
import '/app/badges/badge_extras/badge_extras_widget.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'badges_page_widget.dart' show BadgesPageWidget;
import 'package:flutter/material.dart';

class BadgesPageModel extends FlutterFlowModel<BadgesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgeLevelsRow>? loginTracker;
  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgeLevelsRow>? medicationTracker;
  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgeLevelsRow>? symptomTracker;
  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgeLevelsRow>? appointmentTracker;
  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgesRow>? notification;
  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgesRow>? oneYear;
  // Stores action output result for [Backend Call - Query Rows] action in BadgesPage widget.
  List<BadgesRow>? finalBoss;
  // Model for Badge component.
  late BadgeModel badgeModel1;
  // Model for Badge component.
  late BadgeModel badgeModel2;
  // Model for Badge component.
  late BadgeModel badgeModel3;
  // Model for Badge component.
  late BadgeModel badgeModel4;
  // Model for Badge component.
  late BadgeModel badgeModel5;
  // Model for Badge component.
  late BadgeModel badgeModel6;
  // Model for Badge component.
  late BadgeModel badgeModel7;
  // Model for Badge component.
  late BadgeModel badgeModel8;
  // Model for Badge component.
  late BadgeModel badgeModel9;
  // Model for Badge component.
  late BadgeModel badgeModel10;
  // Model for Badge component.
  late BadgeModel badgeModel11;
  // Model for Badge component.
  late BadgeModel badgeModel12;
  // Model for BadgeExtras component.
  late BadgeExtrasModel badgeExtrasModel1;
  // Model for BadgeExtras component.
  late BadgeExtrasModel badgeExtrasModel2;
  // Model for BadgeExtras component.
  late BadgeExtrasModel badgeExtrasModel3;

  @override
  void initState(BuildContext context) {
    badgeModel1 = createModel(context, () => BadgeModel());
    badgeModel2 = createModel(context, () => BadgeModel());
    badgeModel3 = createModel(context, () => BadgeModel());
    badgeModel4 = createModel(context, () => BadgeModel());
    badgeModel5 = createModel(context, () => BadgeModel());
    badgeModel6 = createModel(context, () => BadgeModel());
    badgeModel7 = createModel(context, () => BadgeModel());
    badgeModel8 = createModel(context, () => BadgeModel());
    badgeModel9 = createModel(context, () => BadgeModel());
    badgeModel10 = createModel(context, () => BadgeModel());
    badgeModel11 = createModel(context, () => BadgeModel());
    badgeModel12 = createModel(context, () => BadgeModel());
    badgeExtrasModel1 = createModel(context, () => BadgeExtrasModel());
    badgeExtrasModel2 = createModel(context, () => BadgeExtrasModel());
    badgeExtrasModel3 = createModel(context, () => BadgeExtrasModel());
  }

  @override
  void dispose() {
    badgeModel1.dispose();
    badgeModel2.dispose();
    badgeModel3.dispose();
    badgeModel4.dispose();
    badgeModel5.dispose();
    badgeModel6.dispose();
    badgeModel7.dispose();
    badgeModel8.dispose();
    badgeModel9.dispose();
    badgeModel10.dispose();
    badgeModel11.dispose();
    badgeModel12.dispose();
    badgeExtrasModel1.dispose();
    badgeExtrasModel2.dispose();
    badgeExtrasModel3.dispose();
  }
}
