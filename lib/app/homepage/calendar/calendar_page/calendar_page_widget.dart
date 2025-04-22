import '/app/homepage/calendar/calendar_component/calendar_component_widget.dart';
import '/app/homepage/calendar/event_dropdown/event_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'calendar_page_model.dart';
export 'calendar_page_model.dart';

/// Page to display a user's calendar with their custom events
class CalendarPageWidget extends StatefulWidget {
  const CalendarPageWidget({super.key});

  static String routeName = 'CalendarPage';
  static String routePath = '/calendarPage';

  @override
  State<CalendarPageWidget> createState() => _CalendarPageWidgetState();
}

class _CalendarPageWidgetState extends State<CalendarPageWidget> {
  late CalendarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.month = functions.getFirstOfMonth();
      safeSetState(() {});
      _model.startingDates = await actions.getDates(
        false,
      );
      _model.displayDates = _model.startingDates!.toList().cast<DateTime>();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Calendar',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Shows the month and year on display in the calendar below. Arrows allow user to view the previous or next months
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.month =
                                      functions.getPrevMonth(_model.month);
                                  safeSetState(() {});
                                  _model.prevDates =
                                      await actions.getMonthDates(
                                    _model.month,
                                  );
                                  _model.displayDates = _model.prevDates!
                                      .toList()
                                      .cast<DateTime>();
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Text(
                                dateTimeFormat("MMMM y", _model.month),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.month =
                                      functions.getNextMonth(_model.month);
                                  safeSetState(() {});
                                  _model.nextDates =
                                      await actions.getMonthDates(
                                    _model.month,
                                  );
                                  _model.displayDates = _model.nextDates!
                                      .toList()
                                      .cast<DateTime>();
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.arrow_forward,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),

                        // CalendarComponent displays the dates in the month indicated
                        Expanded(
                          child: wrapWithModel(
                            model: _model.calendarComponentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CalendarComponentWidget(
                              isWeek: false,
                              displayDates: _model.displayDates,
                              onSelectDate: (date) async {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              extentRatio: 0.5,
                              children: [
                                SlidableAction(
                                  label: 'Done',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                  icon: Icons.check,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                                SlidableAction(
                                  label: 'Delete',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                  icon: Icons.delete_outline_rounded,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  'Medication',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  '3:00pm',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                          Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              extentRatio: 0.5,
                              children: [
                                SlidableAction(
                                  label: 'Done',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                  icon: Icons.check,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                                SlidableAction(
                                  label: 'Delete',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                  icon: Icons.delete_outline_rounded,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  'Refill Prescription',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  '12:00am',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                          Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              extentRatio: 0.5,
                              children: [
                                SlidableAction(
                                  label: 'Done',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                  icon: Icons.check,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                                SlidableAction(
                                  label: 'Delete',
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                  icon: Icons.delete_outline_rounded,
                                  onPressed: (_) {
                                    print('SlidableActionWidget pressed ...');
                                  },
                                ),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: ListTile(
                                title: Text(
                                  'Appointment with Dr. Bolder',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                subtitle: Text(
                                  '10:00am',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Button opens up the NewEventModal for users to input a new event to their calendar.
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Builder(
                  builder: (context) => FlutterFlowIconButton(
                    borderRadius: 20.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      await showAlignedDialog(
                        barrierColor: Colors.transparent,
                        context: context,
                        isGlobal: false,
                        avoidOverflow: false,
                        targetAnchor: AlignmentDirectional(0.0, 1.0)
                            .resolve(Directionality.of(context)),
                        followerAnchor: AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        builder: (dialogContext) {
                          return Material(
                            color: Colors.transparent,
                            child: GestureDetector(
                              onTap: () {
                                FocusScope.of(dialogContext).unfocus();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: Container(
                                height: 160.0,
                                width: 150.0,
                                child: EventDropdownWidget(),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ].divide(SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
