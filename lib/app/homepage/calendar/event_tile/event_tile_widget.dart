import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'event_tile_model.dart';
export 'event_tile_model.dart';

class EventTileWidget extends StatefulWidget {
  const EventTileWidget({
    super.key,
    required this.event,
  });

  final EventStruct? event;

  @override
  State<EventTileWidget> createState() => _EventTileWidgetState();
}

class _EventTileWidgetState extends State<EventTileWidget> {
  late EventTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventTileModel());
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
      height: 20.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 7.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: Color(0xFF5E29B3),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            '${dateTimeFormat("MMMMd", widget.event?.date)}: ${widget.event?.title}',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 10.0)).addToStart(SizedBox(width: 10.0)),
      ),
    );
  }
}
