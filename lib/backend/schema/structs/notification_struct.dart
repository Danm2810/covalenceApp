// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationStruct extends BaseStruct {
  NotificationStruct({
    String? title,
    String? subtitle,
    DateTime? date,
    NotifType? type,
    String? id,
  })  : _title = title,
        _subtitle = subtitle,
        _date = date,
        _type = type,
        _id = id;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "type" field.
  NotifType? _type;
  NotifType? get type => _type;
  set type(NotifType? val) => _type = val;

  bool hasType() => _type != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static NotificationStruct fromMap(Map<String, dynamic> data) =>
      NotificationStruct(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        date: data['date'] as DateTime?,
        type: data['type'] is NotifType
            ? data['type']
            : deserializeEnum<NotifType>(data['type']),
        id: data['id'] as String?,
      );

  static NotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subtitle': _subtitle,
        'date': _date,
        'type': _type?.serialize(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        type: deserializeParam<NotifType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        date == other.date &&
        type == other.type &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, subtitle, date, type, id]);
}

NotificationStruct createNotificationStruct({
  String? title,
  String? subtitle,
  DateTime? date,
  NotifType? type,
  String? id,
}) =>
    NotificationStruct(
      title: title,
      subtitle: subtitle,
      date: date,
      type: type,
      id: id,
    );
