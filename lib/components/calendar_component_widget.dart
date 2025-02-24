import '/components/day_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_component_model.dart';
export 'calendar_component_model.dart';

class CalendarComponentWidget extends StatefulWidget {
  const CalendarComponentWidget({
    super.key,
    required this.isWeek,
    required this.displayDates,
  });

  final bool? isWeek;
  final List<DateTime>? displayDates;

  @override
  State<CalendarComponentWidget> createState() =>
      _CalendarComponentWidgetState();
}

class _CalendarComponentWidgetState extends State<CalendarComponentWidget> {
  late CalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarComponentModel());
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Sun',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Mon',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Tue',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Wed',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Thu',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Fri',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Sat',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Builder(
            builder: (context) {
              final dayComponent =
                  widget!.displayDates!.toList().take(42).toList();

              return GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 1.75,
                ),
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: dayComponent.length,
                itemBuilder: (context, dayComponentIndex) {
                  final dayComponentItem = dayComponent[dayComponentIndex];
                  return wrapWithModel(
                    model: _model.dayComponentModels.getModel(
                      dayComponentIndex.toString(),
                      dayComponentIndex,
                    ),
                    updateCallback: () => safeSetState(() {}),
                    child: DayComponentWidget(
                      key: Key(
                        'Keyoju_${dayComponentIndex.toString()}',
                      ),
                      isSelected: dayComponentItem == _model.selectedDate,
                      isToday: dateTimeFormat("yMd", dayComponentItem) ==
                          dateTimeFormat("yMd", getCurrentTimestamp),
                      date: dayComponentItem,
                      onDaySelected: (date) async {
                        _model.selectedDate = date;
                        safeSetState(() {});
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
