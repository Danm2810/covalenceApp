import '/app/notification/notification_tile/notification_tile_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notification_page_model.dart';
export 'notification_page_model.dart';

class NotificationPageWidget extends StatefulWidget {
  const NotificationPageWidget({super.key});

  static String routeName = 'NotificationPage';
  static String routePath = '/notificationPage';

  @override
  State<NotificationPageWidget> createState() => _NotificationPageWidgetState();
}

class _NotificationPageWidgetState extends State<NotificationPageWidget> {
  late NotificationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationPageModel());
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
            'Notifications',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      'Today, January 21st',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        notif: NotificationStruct(
                          title: 'Appointment with Dr. Holden',
                          subtitle: 'You have an appointment today!',
                          date: DateTime.fromMicrosecondsSinceEpoch(
                              1746014400000000),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        notif: NotificationStruct(
                          title: 'Medication Reminder',
                          subtitle: 'Take one tablet, 30mg',
                          date: DateTime.fromMicrosecondsSinceEpoch(
                              1744459200000000),
                        ),
                      ),
                    ),
                    Text(
                      'Yesterday, January 20st',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    wrapWithModel(
                      model: _model.notificationTileModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: NotificationTileWidget(
                        notif: NotificationStruct(
                          title: 'New Test Result Available',
                          subtitle:
                              'Find your Gait results in the test results widget',
                          date: DateTime.fromMicrosecondsSinceEpoch(
                              1743793200000000),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
