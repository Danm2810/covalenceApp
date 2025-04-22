import '/app/badges/badge/badge_widget.dart';
import '/app/badges/badge_extras/badge_extras_widget.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'badges_page_model.dart';
export 'badges_page_model.dart';

class BadgesPageWidget extends StatefulWidget {
  const BadgesPageWidget({super.key});

  static String routeName = 'BadgesPage';
  static String routePath = '/badgesPage';

  @override
  State<BadgesPageWidget> createState() => _BadgesPageWidgetState();
}

class _BadgesPageWidgetState extends State<BadgesPageWidget> {
  late BadgesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BadgesPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.loginTracker = await BadgeLevelsTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'badge_id',
              '259694f2-eba6-4858-8ff6-830c8d0d74f8',
            )
            .order('condition', ascending: true),
      );
      _model.medicationTracker = await BadgeLevelsTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'badge_id',
              'b5af9238-de78-43e1-b8e6-78a2a3a9b04c',
            )
            .order('condition', ascending: true),
      );
      _model.symptomTracker = await BadgeLevelsTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'badge_id',
              '3648d13b-154a-42e6-bb0d-94e3460b93e2',
            )
            .order('condition', ascending: true),
      );
      _model.appointmentTracker = await BadgeLevelsTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'badge_id',
              '2d8cf23d-f480-4c8a-a175-f8f148878b95',
            )
            .order('condition', ascending: true),
      );
      _model.notification = await BadgesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'badge_name',
          'Notification',
        ),
      );
      _model.oneYear = await BadgesTable().queryRows(
        queryFn: (q) => q.like(
          'badge_name',
          'One Year Annie',
        ),
      );
      _model.finalBoss = await BadgesTable().queryRows(
        queryFn: (q) => q.like(
          'badge_name',
          'Final Boss',
        ),
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 41.8,
                    decoration: BoxDecoration(
                      color: Color(0xFF3DA275),
                      border: Border.all(
                        color: Color(0xFF3DA275),
                        width: 50.0,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 500.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3DA275),
                          border: Border.all(
                            color: Color(0xFF3DA275),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  context.pop();
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Badges',
                                  options: FFButtonOptions(
                                    height: 69.5,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconAlignment: IconAlignment.end,
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF3DA275),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Number of Logins',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.badgeModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: BadgeWidget(
                            badge: _model.loginTracker?.firstOrNull,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.badgeModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: BadgeWidget(
                            badge: _model.loginTracker?.elementAtOrNull(1),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.badgeModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: BadgeWidget(
                            badge: _model.loginTracker?.lastOrNull,
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 20.0))
                          .addToStart(SizedBox(width: 20.0))
                          .addToEnd(SizedBox(width: 20.0)),
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToEnd(SizedBox(height: 10.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Logged Symptoms',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.symptomTracker != null &&
                            (_model.symptomTracker)!.isNotEmpty)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.badgeModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.symptomTracker?.firstOrNull,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge:
                                      _model.symptomTracker?.elementAtOrNull(1),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.symptomTracker?.lastOrNull,
                                ),
                              ),
                            ]
                                .divide(SizedBox(width: 20.0))
                                .addToStart(SizedBox(width: 20.0))
                                .addToEnd(SizedBox(width: 20.0)),
                          ),
                      ],
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToEnd(SizedBox(height: 10.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Set up Appointments',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.appointmentTracker != null &&
                            (_model.appointmentTracker)!.isNotEmpty)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.badgeModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.appointmentTracker?.firstOrNull,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.appointmentTracker
                                      ?.elementAtOrNull(1),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.appointmentTracker?.lastOrNull,
                                ),
                              ),
                            ]
                                .divide(SizedBox(width: 20.0))
                                .addToStart(SizedBox(width: 20.0))
                                .addToEnd(SizedBox(width: 20.0)),
                          ),
                      ],
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToEnd(SizedBox(height: 10.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Tracked Medications',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.5,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.medicationTracker != null &&
                            (_model.medicationTracker)!.isNotEmpty)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.badgeModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.medicationTracker?.firstOrNull,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.medicationTracker
                                      ?.elementAtOrNull(1),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeWidget(
                                  badge: _model.medicationTracker?.lastOrNull,
                                ),
                              ),
                            ]
                                .divide(SizedBox(width: 20.0))
                                .addToStart(SizedBox(width: 20.0))
                                .addToEnd(SizedBox(width: 20.0)),
                          ),
                      ],
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToEnd(SizedBox(height: 10.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Extras!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.5,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if ((_model.notification != null &&
                                (_model.notification)!.isNotEmpty) &&
                            (_model.oneYear != null &&
                                (_model.oneYear)!.isNotEmpty) &&
                            (_model.finalBoss != null &&
                                (_model.finalBoss)!.isNotEmpty))
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.badgeExtrasModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeExtrasWidget(
                                  badge: _model.notification!.firstOrNull!,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeExtrasModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeExtrasWidget(
                                  badge: _model.oneYear!.firstOrNull!,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.badgeExtrasModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: BadgeExtrasWidget(
                                  badge: _model.finalBoss!.firstOrNull!,
                                ),
                              ),
                            ]
                                .divide(SizedBox(width: 20.0))
                                .addToStart(SizedBox(width: 20.0))
                                .addToEnd(SizedBox(width: 20.0)),
                          ),
                      ],
                    ),
                  ]
                      .divide(SizedBox(height: 10.0))
                      .addToEnd(SizedBox(height: 10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
