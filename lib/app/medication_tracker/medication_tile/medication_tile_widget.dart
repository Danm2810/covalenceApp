import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'medication_tile_model.dart';
export 'medication_tile_model.dart';

class MedicationTileWidget extends StatefulWidget {
  const MedicationTileWidget({
    super.key,
    required this.medication,
  });

  final TrackedMedicationStruct? medication;

  @override
  State<MedicationTileWidget> createState() => _MedicationTileWidgetState();
}

class _MedicationTileWidgetState extends State<MedicationTileWidget> {
  late MedicationTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicationTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: FaIcon(
                  FontAwesomeIcons.pills,
                  color: random_data.randomColor(),
                  size: 50.0,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.medication?.productNdc,
                    'Medication',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Take ${widget.medication?.dosageUnit} this morning',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Transform.scale(
                  scaleX: 2.5,
                  scaleY: 2.5,
                  child: Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        visualDensity: VisualDensity.standard,
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      unselectedWidgetColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Checkbox(
                      value: _model.checkboxValue ??= false,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.checkboxValue = newValue!);
                      },
                      side: BorderSide(
                        width: 2,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      activeColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      checkColor: FlutterFlowTheme.of(context).accent2,
                    ),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
