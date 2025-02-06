import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_bar_model.dart';
export 'top_bar_model.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({super.key});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  late TopBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: Image.asset(
            'assets/images/iphlogo.png',
            width: 40.0,
            height: 40.0,
            fit: BoxFit.fitHeight,
            alignment: Alignment(-1.0, -1.0),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          child: Text(
            dateTimeFormat("MMMEd", getCurrentTimestamp),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Flexible(
          child: Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: Icon(
              Icons.notifications_none,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 40.0,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(1.0, 0.0),
          child: Icon(
            Icons.person_outlined,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 40.0,
          ),
        ),
      ],
    );
  }
}
