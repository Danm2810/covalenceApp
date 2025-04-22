import '/app/vital_tracker/tracked_vital_alph/tracked_vital_alph_widget.dart';
import '/app/vital_tracker/tracked_vital_date/tracked_vital_date_widget.dart';
import '/app/vital_tracker/vital_list/vital_list_widget.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'vital_tracker_model.dart';
export 'vital_tracker_model.dart';

class VitalTrackerWidget extends StatefulWidget {
  const VitalTrackerWidget({super.key});

  static String routeName = 'VitalTracker';
  static String routePath = '/vitalTracker';

  @override
  State<VitalTrackerWidget> createState() => _VitalTrackerWidgetState();
}

class _VitalTrackerWidgetState extends State<VitalTrackerWidget> {
  late VitalTrackerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VitalTrackerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.addToDisplayVitals(TrackedVitalStruct(
        id: '14',
        vitalId: 'cc7d4287-202f-4eaa-bdaa-8fe6f3785872',
        dateRecorded: DateTime.fromMicrosecondsSinceEpoch(1743210000000000),
        value: 140,
      ));
      safeSetState(() {});
      _model.vitalsList = await VitalListTable().queryRows(
        queryFn: (q) => q.order('vital_name', ascending: true),
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Vital Tracking',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: VitalListWidget(
                                      vitalsList: _model.vitalsList!,
                                      onVitalTracked: (newVitalTracked) async {
                                        _model.addToDisplayVitals(
                                            newVitalTracked);
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          text: 'Log Vital',
                          options: FFButtonOptions(
                            width: 338.6,
                            height: 65.6,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF2EA275),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: 267.8,
                      height: 42.4,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Arrange by:',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: FlutterFlowDropDown<String>(
                                key: ValueKey('Date'),
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= 'Date',
                                ),
                                optionsHasValueKeys: true,
                                options: List<String>.from(['Date', 'Vital']),
                                optionLabels: ['Date', 'A to Z'],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropDownValue = val),
                                width: 120.0,
                                height: 55.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                hintText: 'Date',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.black,
                                  size: 25.0,
                                ),
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Builder(
                      builder: (context) {
                        if (_model.dropDownValue == 'Date') {
                          return Builder(
                            builder: (context) {
                              final displayVitalsByDate =
                                  _model.displayVitals.toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: displayVitalsByDate.length,
                                itemBuilder:
                                    (context, displayVitalsByDateIndex) {
                                  final displayVitalsByDateItem =
                                      displayVitalsByDate[
                                          displayVitalsByDateIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Container(
                                      child: wrapWithModel(
                                        model: _model.trackedVitalDateModels
                                            .getModel(
                                          displayVitalsByDateIndex.toString(),
                                          displayVitalsByDateIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TrackedVitalDateWidget(
                                          key: Key(
                                            'Key8xk_${displayVitalsByDateIndex.toString()}',
                                          ),
                                          trackedVital: displayVitalsByDateItem,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        } else {
                          return Builder(
                            builder: (context) {
                              final displayVitalsByAlph =
                                  _model.displayVitals.toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: displayVitalsByAlph.length,
                                itemBuilder:
                                    (context, displayVitalsByAlphIndex) {
                                  final displayVitalsByAlphItem =
                                      displayVitalsByAlph[
                                          displayVitalsByAlphIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Container(
                                      child: wrapWithModel(
                                        model: _model.trackedVitalAlphModels
                                            .getModel(
                                          displayVitalsByAlphIndex.toString(),
                                          displayVitalsByAlphIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TrackedVitalAlphWidget(
                                          key: Key(
                                            'Keymxx_${displayVitalsByAlphIndex.toString()}',
                                          ),
                                          trackedVital: displayVitalsByAlphItem,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
