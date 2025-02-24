import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'day_component_model.dart';
export 'day_component_model.dart';

class DayComponentWidget extends StatefulWidget {
  const DayComponentWidget({
    super.key,
    required this.date,
    required this.onDaySelected,
    required this.isSelected,
    required this.isToday,
  });

  final DateTime? date;
  final Future Function(DateTime date)? onDaySelected;
  final bool? isSelected;
  final bool? isToday;

  @override
  State<DayComponentWidget> createState() => _DayComponentWidgetState();
}

class _DayComponentWidgetState extends State<DayComponentWidget> {
  late DayComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.onDaySelected?.call(
                widget!.date!,
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: MediaQuery.sizeOf(context).width * 0.5,
              decoration: BoxDecoration(
                color: () {
                  if (widget!.isSelected!) {
                    return FlutterFlowTheme.of(context).primary;
                  } else if (widget!.isToday!) {
                    return FlutterFlowTheme.of(context).secondary;
                  } else {
                    return Color(0x00F9F9F9);
                  }
                }(),
                shape: BoxShape.circle,
              ),
              child: Stack(
                alignment: AlignmentDirectional(0.0, -1.0),
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: AnimatedDefaultTextStyle(
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: widget!.isSelected!
                                ? FlutterFlowTheme.of(context).primaryBackground
                                : FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                          ),
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      child: Text(
                        dateTimeFormat("d", widget!.date),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (false)
                        Container(
                          width: 7.0,
                          height: 7.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).error,
                            shape: BoxShape.circle,
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
