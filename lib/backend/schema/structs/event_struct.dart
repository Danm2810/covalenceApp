// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventStruct extends BaseStruct {
  EventStruct({
    DateTime? date,
    String? title,
    String? location,
    String? notes,
    String? doctor,
  })  : _date = date,
        _title = title,
        _location = location,
        _notes = notes,
        _doctor = doctor;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  // "doctor" field.
  String? _doctor;
  String get doctor => _doctor ?? '';
  set doctor(String? val) => _doctor = val;

  bool hasDoctor() => _doctor != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        date: data['date'] as DateTime?,
        title: data['title'] as String?,
        location: data['location'] as String?,
        notes: data['notes'] as String?,
        doctor: data['doctor'] as String?,
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'title': _title,
        'location': _location,
        'notes': _notes,
        'doctor': _doctor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'doctor': serializeParam(
          _doctor,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        doctor: deserializeParam(
          data['doctor'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventStruct &&
        date == other.date &&
        title == other.title &&
        location == other.location &&
        notes == other.notes &&
        doctor == other.doctor;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([date, title, location, notes, doctor]);
}

EventStruct createEventStruct({
  DateTime? date,
  String? title,
  String? location,
  String? notes,
  String? doctor,
}) =>
    EventStruct(
      date: date,
      title: title,
      location: location,
      notes: notes,
      doctor: doctor,
    );
