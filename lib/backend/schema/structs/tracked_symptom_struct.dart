// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackedSymptomStruct extends BaseStruct {
  TrackedSymptomStruct({
    int? id,
    int? symptomId,
    DateTime? dateRecorded,
    int? severity,
    String? description,
  })  : _id = id,
        _symptomId = symptomId,
        _dateRecorded = dateRecorded,
        _severity = severity,
        _description = description;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "symptom_id" field.
  int? _symptomId;
  int get symptomId => _symptomId ?? 0;
  set symptomId(int? val) => _symptomId = val;

  void incrementSymptomId(int amount) => symptomId = symptomId + amount;

  bool hasSymptomId() => _symptomId != null;

  // "date_recorded" field.
  DateTime? _dateRecorded;
  DateTime? get dateRecorded => _dateRecorded;
  set dateRecorded(DateTime? val) => _dateRecorded = val;

  bool hasDateRecorded() => _dateRecorded != null;

  // "severity" field.
  int? _severity;
  int get severity => _severity ?? 0;
  set severity(int? val) => _severity = val;

  void incrementSeverity(int amount) => severity = severity + amount;

  bool hasSeverity() => _severity != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static TrackedSymptomStruct fromMap(Map<String, dynamic> data) =>
      TrackedSymptomStruct(
        id: castToType<int>(data['id']),
        symptomId: castToType<int>(data['symptom_id']),
        dateRecorded: data['date_recorded'] as DateTime?,
        severity: castToType<int>(data['severity']),
        description: data['description'] as String?,
      );

  static TrackedSymptomStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackedSymptomStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'symptom_id': _symptomId,
        'date_recorded': _dateRecorded,
        'severity': _severity,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'symptom_id': serializeParam(
          _symptomId,
          ParamType.int,
        ),
        'date_recorded': serializeParam(
          _dateRecorded,
          ParamType.DateTime,
        ),
        'severity': serializeParam(
          _severity,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrackedSymptomStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackedSymptomStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        symptomId: deserializeParam(
          data['symptom_id'],
          ParamType.int,
          false,
        ),
        dateRecorded: deserializeParam(
          data['date_recorded'],
          ParamType.DateTime,
          false,
        ),
        severity: deserializeParam(
          data['severity'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrackedSymptomStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackedSymptomStruct &&
        id == other.id &&
        symptomId == other.symptomId &&
        dateRecorded == other.dateRecorded &&
        severity == other.severity &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, symptomId, dateRecorded, severity, description]);
}

TrackedSymptomStruct createTrackedSymptomStruct({
  int? id,
  int? symptomId,
  DateTime? dateRecorded,
  int? severity,
  String? description,
}) =>
    TrackedSymptomStruct(
      id: id,
      symptomId: symptomId,
      dateRecorded: dateRecorded,
      severity: severity,
      description: description,
    );
