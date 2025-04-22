import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tracked_symptom_date_model.dart';
export 'tracked_symptom_date_model.dart';

class TrackedSymptomDateWidget extends StatefulWidget {
  const TrackedSymptomDateWidget({
    super.key,
    required this.displaySymptom,
  });

  final TrackedSymptomStruct? displaySymptom;

  @override
  State<TrackedSymptomDateWidget> createState() =>
      _TrackedSymptomDateWidgetState();
}

class _TrackedSymptomDateWidgetState extends State<TrackedSymptomDateWidget> {
  late TrackedSymptomDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackedSymptomDateModel());
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
          height: 175.6,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  dateTimeFormat(
                      "MMMEd", widget.displaySymptom!.dateRecorded!),
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
                  child: Text(
                    '[Symptom]',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 15.0,
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
                    'Time: ${dateTimeFormat("jm", widget.displaySymptom?.dateRecorded)}',
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
                    'Severity: ${widget.displaySymptom?.severity.toString()}',
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
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Description: ${widget.displaySymptom?.description}',
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
