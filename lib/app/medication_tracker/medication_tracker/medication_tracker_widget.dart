import '/app/homepage/calendar/calendar_component/calendar_component_widget.dart';
import '/app/medication_tracker/medication_tile/medication_tile_widget.dart';
import '/app/medication_tracker/medication_tracker_options/medication_tracker_options_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'medication_tracker_model.dart';
export 'medication_tracker_model.dart';

class MedicationTrackerWidget extends StatefulWidget {
  const MedicationTrackerWidget({super.key});

  static String routeName = 'MedicationTracker';
  static String routePath = '/medicationTracker';

  @override
  State<MedicationTrackerWidget> createState() =>
      _MedicationTrackerWidgetState();
}

class _MedicationTrackerWidgetState extends State<MedicationTrackerWidget> {
  late MedicationTrackerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicationTrackerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.currentWeek = await actions.getDates(
        true,
      );
      _model.datesToDisplay = _model.currentWeek!.toList().cast<DateTime>();
      safeSetState(() {});
      _model.selectedDate = getCurrentTimestamp;
      safeSetState(() {});
      _model.addToDisplayMedications(TrackedMedicationStruct(
        id: 234234,
        productNdc: 'Lorazepam',
        frequencyType: FrequencyType.daily,
        timesPerDay: 1,
        dateRecorded: DateTime.fromMicrosecondsSinceEpoch(1744171200000000),
        dosageUnit: '30 mg',
      ));
      safeSetState(() {});
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => FFButtonWidget(
                          onPressed: () async {
                            showAlignedDialog(
                              context: context,
                              isGlobal: false,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(-0.05, 1.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, -1.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Container(
                                      width: 300.0,
                                      child: MedicationTrackerOptionsWidget(),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          text: 'Medications',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 40.0,
                          ),
                          options: FFButtonOptions(
                            width: 300.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child:
                      // Calendar Component goes between Week mode and Month mode based on the toggle
                      Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: wrapWithModel(
                      model: _model.calendarComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CalendarComponentWidget(
                        isWeek: true,
                        displayDates: _model.datesToDisplay,
                        onSelectDate: (date) async {
                          _model.selectedDate = date;
                          safeSetState(() {});
                        },
                      ),
                    ),
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    dateTimeFormat("MMMMEEEEd", _model.selectedDate),
                    'Today',
                  ),
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                      ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Text(
                      'Mark all',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
              child: Builder(
                builder: (context) {
                  final displayMedication = _model.displayMedications.toList();

                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: displayMedication.length,
                    separatorBuilder: (_, __) => SizedBox(height: 10.0),
                    itemBuilder: (context, displayMedicationIndex) {
                      final displayMedicationItem =
                          displayMedication[displayMedicationIndex];
                      return MedicationTileWidget(
                        key: Key(
                            'Keyprg_${displayMedicationIndex}_of_${displayMedication.length}'),
                        medication: displayMedicationItem,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
