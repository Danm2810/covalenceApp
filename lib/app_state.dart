import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _profileImagePath =
          prefs.getString('ff_profileImagePath') ?? _profileImagePath;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// This is to update profile picture
  String _UploadedProfilePicture = '';
  String get UploadedProfilePicture => _UploadedProfilePicture;
  set UploadedProfilePicture(String value) {
    _UploadedProfilePicture = value;
  }

  bool _flag = true;
  bool get flag => _flag;
  set flag(bool value) {
    _flag = value;
  }

  String _profileImagePath = '\"\"';
  String get profileImagePath => _profileImagePath;
  set profileImagePath(String value) {
    _profileImagePath = value;
    prefs.setString('ff_profileImagePath', value);
  }

  int _clinicid = 0;
  int get clinicid => _clinicid;
  set clinicid(int value) {
    _clinicid = value;
  }

  int _patientid = 0;
  int get patientid => _patientid;
  set patientid(int value) {
    _patientid = value;
  }

  String _verificationToken = '';
  String get verificationToken => _verificationToken;
  set verificationToken(String value) {
    _verificationToken = value;
  }

  String _authorizationToken = '';
  String get authorizationToken => _authorizationToken;
  set authorizationToken(String value) {
    _authorizationToken = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
