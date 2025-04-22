// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BadgesStruct extends BaseStruct {
  BadgesStruct({
    int? id,
    int? badgeId,
    DateTime? dateCompleted,
  })  : _id = id,
        _badgeId = badgeId,
        _dateCompleted = dateCompleted;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "badge_id" field.
  int? _badgeId;
  int get badgeId => _badgeId ?? 0;
  set badgeId(int? val) => _badgeId = val;

  void incrementBadgeId(int amount) => badgeId = badgeId + amount;

  bool hasBadgeId() => _badgeId != null;

  // "date_completed" field.
  DateTime? _dateCompleted;
  DateTime? get dateCompleted => _dateCompleted;
  set dateCompleted(DateTime? val) => _dateCompleted = val;

  bool hasDateCompleted() => _dateCompleted != null;

  static BadgesStruct fromMap(Map<String, dynamic> data) => BadgesStruct(
        id: castToType<int>(data['id']),
        badgeId: castToType<int>(data['badge_id']),
        dateCompleted: data['date_completed'] as DateTime?,
      );

  static BadgesStruct? maybeFromMap(dynamic data) =>
      data is Map ? BadgesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'badge_id': _badgeId,
        'date_completed': _dateCompleted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'badge_id': serializeParam(
          _badgeId,
          ParamType.int,
        ),
        'date_completed': serializeParam(
          _dateCompleted,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static BadgesStruct fromSerializableMap(Map<String, dynamic> data) =>
      BadgesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        badgeId: deserializeParam(
          data['badge_id'],
          ParamType.int,
          false,
        ),
        dateCompleted: deserializeParam(
          data['date_completed'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'BadgesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BadgesStruct &&
        id == other.id &&
        badgeId == other.badgeId &&
        dateCompleted == other.dateCompleted;
  }

  @override
  int get hashCode => const ListEquality().hash([id, badgeId, dateCompleted]);
}

BadgesStruct createBadgesStruct({
  int? id,
  int? badgeId,
  DateTime? dateCompleted,
}) =>
    BadgesStruct(
      id: id,
      badgeId: badgeId,
      dateCompleted: dateCompleted,
    );
