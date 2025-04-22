// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackedVitalStruct extends BaseStruct {
  TrackedVitalStruct({
    String? id,
    String? vitalId,
    DateTime? dateRecorded,
    int? value,
  })  : _id = id,
        _vitalId = vitalId,
        _dateRecorded = dateRecorded,
        _value = value;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "vital_id" field.
  String? _vitalId;
  String get vitalId => _vitalId ?? '';
  set vitalId(String? val) => _vitalId = val;

  bool hasVitalId() => _vitalId != null;

  // "date_recorded" field.
  DateTime? _dateRecorded;
  DateTime? get dateRecorded => _dateRecorded;
  set dateRecorded(DateTime? val) => _dateRecorded = val;

  bool hasDateRecorded() => _dateRecorded != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  static TrackedVitalStruct fromMap(Map<String, dynamic> data) =>
      TrackedVitalStruct(
        id: data['id'] as String?,
        vitalId: data['vital_id'] as String?,
        dateRecorded: data['date_recorded'] as DateTime?,
        value: castToType<int>(data['value']),
      );

  static TrackedVitalStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackedVitalStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'vital_id': _vitalId,
        'date_recorded': _dateRecorded,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'vital_id': serializeParam(
          _vitalId,
          ParamType.String,
        ),
        'date_recorded': serializeParam(
          _dateRecorded,
          ParamType.DateTime,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
      }.withoutNulls;

  static TrackedVitalStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackedVitalStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        vitalId: deserializeParam(
          data['vital_id'],
          ParamType.String,
          false,
        ),
        dateRecorded: deserializeParam(
          data['date_recorded'],
          ParamType.DateTime,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TrackedVitalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackedVitalStruct &&
        id == other.id &&
        vitalId == other.vitalId &&
        dateRecorded == other.dateRecorded &&
        value == other.value;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, vitalId, dateRecorded, value]);
}

TrackedVitalStruct createTrackedVitalStruct({
  String? id,
  String? vitalId,
  DateTime? dateRecorded,
  int? value,
}) =>
    TrackedVitalStruct(
      id: id,
      vitalId: vitalId,
      dateRecorded: dateRecorded,
      value: value,
    );
