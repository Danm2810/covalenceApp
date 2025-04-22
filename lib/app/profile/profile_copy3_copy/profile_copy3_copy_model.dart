import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_copy3_copy_widget.dart' show ProfileCopy3CopyWidget;
import 'package:flutter/material.dart';

class ProfileCopy3CopyModel extends FlutterFlowModel<ProfileCopy3CopyWidget> {
  ///  Local state fields for this page.

  String uploadedImage =
      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future disappearingicon(BuildContext context) async {}
}
