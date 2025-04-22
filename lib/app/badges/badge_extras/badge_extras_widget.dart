import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'badge_extras_model.dart';
export 'badge_extras_model.dart';

class BadgeExtrasWidget extends StatefulWidget {
  const BadgeExtrasWidget({
    super.key,
    required this.badge,
  });

  final BadgesRow? badge;

  @override
  State<BadgeExtrasWidget> createState() => _BadgeExtrasWidgetState();
}

class _BadgeExtrasWidgetState extends State<BadgeExtrasWidget> {
  late BadgeExtrasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BadgeExtrasModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.badge != null,
      child: Container(
        width: 100.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/empty-badge.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.badge?.badgeDescription,
                    'description',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 11.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Text(
              valueOrDefault<String>(
                widget.badge?.badgeName,
                'name',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
