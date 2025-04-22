import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tracked_vital_date_model.dart';
export 'tracked_vital_date_model.dart';

class TrackedVitalDateWidget extends StatefulWidget {
  const TrackedVitalDateWidget({
    super.key,
    required this.trackedVital,
  });

  final TrackedVitalStruct? trackedVital;

  @override
  State<TrackedVitalDateWidget> createState() => _TrackedVitalDateWidgetState();
}

class _TrackedVitalDateWidgetState extends State<TrackedVitalDateWidget> {
  late TrackedVitalDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackedVitalDateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 338.6,
          height: 170.0,
          decoration: BoxDecoration(
            color: Color(0xFF4DCA9A),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  dateTimeFormat("MMMEd", widget.trackedVital!.dateRecorded!),
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 6.0, 0.0, 8.0),
                  child: FutureBuilder<List<VitalListRow>>(
                    future: VitalListTable().querySingleRow(
                      queryFn: (q) => q.eqOrNull(
                        'vital_id',
                        widget.trackedVital?.vitalId,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<VitalListRow> textVitalListRowList = snapshot.data!;

                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final textVitalListRow = textVitalListRowList.isNotEmpty
                          ? textVitalListRowList.first
                          : null;

                      return Text(
                        valueOrDefault<String>(
                          textVitalListRow?.vitalName,
                          '[Vital]',
                        ),
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                ),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 8.0),
                  child: Text(
                    'Time: ${dateTimeFormat("jm", widget.trackedVital?.dateRecorded)}',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 8.0),
                  child: Text(
                    'Reading: ${widget.trackedVital?.value.toString()}',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
