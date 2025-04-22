// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthenticationTokenStruct extends BaseStruct {
  AuthenticationTokenStruct({
    String? authToken,
  }) : _authToken = authToken;

  // "authToken" field.
  String? _authToken;
  String get authToken => _authToken ?? '';
  set authToken(String? val) => _authToken = val;

  bool hasAuthToken() => _authToken != null;

  static AuthenticationTokenStruct fromMap(Map<String, dynamic> data) =>
      AuthenticationTokenStruct(
        authToken: data['authToken'] as String?,
      );

  static AuthenticationTokenStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthenticationTokenStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'authToken': _authToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'authToken': serializeParam(
          _authToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthenticationTokenStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AuthenticationTokenStruct(
        authToken: deserializeParam(
          data['authToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthenticationTokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthenticationTokenStruct && authToken == other.authToken;
  }

  @override
  int get hashCode => const ListEquality().hash([authToken]);
}

AuthenticationTokenStruct createAuthenticationTokenStruct({
  String? authToken,
}) =>
    AuthenticationTokenStruct(
      authToken: authToken,
    );
