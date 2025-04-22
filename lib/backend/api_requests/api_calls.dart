import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start CovalenceLoginCalls Group Code

class CovalenceLoginCallsGroup {
  static String getBaseUrl() => 'https://api.iph.ai/';
  static Map<String, String> headers = {};
  static NewUserValidationCall newUserValidationCall = NewUserValidationCall();
  static CreateNewUserCall createNewUserCall = CreateNewUserCall();
  static LoginUserCall loginUserCall = LoginUserCall();
}

class NewUserValidationCall {
  Future<ApiCallResponse> call({
    int? patientId,
    int? clinicId,
    String? birthdate = '',
    String? ssn = '',
  }) async {
    final baseUrl = CovalenceLoginCallsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "patient_id": 0,
  "clinic_id": 0,
  "birthdate": "string",
  "ssn": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NewUserValidation',
      apiUrl: '${baseUrl}/covalence/user/verification',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? verificationToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verification_token''',
      ));
}

class CreateNewUserCall {
  Future<ApiCallResponse> call({
    int? patientId,
    int? clinicId,
    String? email = '',
    String? password = '',
    String? verificationToken = '',
  }) async {
    final baseUrl = CovalenceLoginCallsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "patient_id": ${patientId},
  "clinic_id": ${clinicId},
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
  "verification_token": "${escapeStringForJson(verificationToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateNewUser',
      apiUrl: '${baseUrl}covalence/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? verificationToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.first_name''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.last_name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class LoginUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = CovalenceLoginCallsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginUser',
      apiUrl: '${baseUrl}covalence/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

/// End CovalenceLoginCalls Group Code

class SearchMedicationsListCall {
  static Future<ApiCallResponse> call({
    String? query = 'ibuprofen',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchMedicationsList',
      apiUrl:
          'https://api.fda.gov/drug/ndc.json?search=brand_name:${query}&limit=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? allResults(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
  static List<String>? productNdc(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].product_ndc''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? genericName(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].generic_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? brandName(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].brand_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
