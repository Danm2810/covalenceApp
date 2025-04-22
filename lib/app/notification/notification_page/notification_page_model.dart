import '/app/notification/notification_tile/notification_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_page_widget.dart' show NotificationPageWidget;
import 'package:flutter/material.dart';

class NotificationPageModel extends FlutterFlowModel<NotificationPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NotificationTile component.
  late NotificationTileModel notificationTileModel1;
  // Model for NotificationTile component.
  late NotificationTileModel notificationTileModel2;
  // Model for NotificationTile component.
  late NotificationTileModel notificationTileModel3;

  @override
  void initState(BuildContext context) {
    notificationTileModel1 =
        createModel(context, () => NotificationTileModel());
    notificationTileModel2 =
        createModel(context, () => NotificationTileModel());
    notificationTileModel3 =
        createModel(context, () => NotificationTileModel());
  }

  @override
  void dispose() {
    notificationTileModel1.dispose();
    notificationTileModel2.dispose();
    notificationTileModel3.dispose();
  }
}
