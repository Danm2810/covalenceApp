import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tracked_symptom_alph_model.dart';
export 'tracked_symptom_alph_model.dart';

class TrackedSymptomAlphWidget extends StatefulWidget {
  const TrackedSymptomAlphWidget({
    super.key,
    required this.trackedSymptom,
  });

  final TrackedSymptomStruct? trackedSymptom;

  @override
  State<TrackedSymptomAlphWidget> createState() =>
      _TrackedSymptomAlphWidgetState();
}

class _TrackedSymptomAlphWidgetState extends State<TrackedSymptomAlphWidget> {
  late TrackedSymptomAlphModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackedSymptomAlphModel());
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Text(
                    '[Symptom]',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 30.0,
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
                    'Date: ${dateTimeFormat("MMMEd", widget.trackedSymptom?.dateRecorded)}',
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
                    'Time: ${dateTimeFormat("jm", widget.trackedSymptom?.dateRecorded)}',
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
                    'Severity: ${widget.trackedSymptom?.severity.toString()}',
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
                    'Description: ${widget.trackedSymptom?.description}',
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
