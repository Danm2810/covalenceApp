// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackedMedicationStruct extends BaseStruct {
  TrackedMedicationStruct({
    int? id,
    String? productNdc,
    FrequencyType? frequencyType,
    int? timesPerDay,
    DateTime? dateRecorded,
    String? dosageUnit,
  })  : _id = id,
        _productNdc = productNdc,
        _frequencyType = frequencyType,
        _timesPerDay = timesPerDay,
        _dateRecorded = dateRecorded,
        _dosageUnit = dosageUnit;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "product_ndc" field.
  String? _productNdc;
  String get productNdc => _productNdc ?? '';
  set productNdc(String? val) => _productNdc = val;

  bool hasProductNdc() => _productNdc != null;

  // "frequency_type" field.
  FrequencyType? _frequencyType;
  FrequencyType? get frequencyType => _frequencyType;
  set frequencyType(FrequencyType? val) => _frequencyType = val;

  bool hasFrequencyType() => _frequencyType != null;

  // "times_per_day" field.
  int? _timesPerDay;
  int get timesPerDay => _timesPerDay ?? 0;
  set timesPerDay(int? val) => _timesPerDay = val;

  void incrementTimesPerDay(int amount) => timesPerDay = timesPerDay + amount;

  bool hasTimesPerDay() => _timesPerDay != null;

  // "date_recorded" field.
  DateTime? _dateRecorded;
  DateTime? get dateRecorded => _dateRecorded;
  set dateRecorded(DateTime? val) => _dateRecorded = val;

  bool hasDateRecorded() => _dateRecorded != null;

  // "dosage_unit" field.
  String? _dosageUnit;
  String get dosageUnit => _dosageUnit ?? '';
  set dosageUnit(String? val) => _dosageUnit = val;

  bool hasDosageUnit() => _dosageUnit != null;

  static TrackedMedicationStruct fromMap(Map<String, dynamic> data) =>
      TrackedMedicationStruct(
        id: castToType<int>(data['id']),
        productNdc: data['product_ndc'] as String?,
        frequencyType: data['frequency_type'] is FrequencyType
            ? data['frequency_type']
            : deserializeEnum<FrequencyType>(data['frequency_type']),
        timesPerDay: castToType<int>(data['times_per_day']),
        dateRecorded: data['date_recorded'] as DateTime?,
        dosageUnit: data['dosage_unit'] as String?,
      );

  static TrackedMedicationStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackedMedicationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'product_ndc': _productNdc,
        'frequency_type': _frequencyType?.serialize(),
        'times_per_day': _timesPerDay,
        'date_recorded': _dateRecorded,
        'dosage_unit': _dosageUnit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'product_ndc': serializeParam(
          _productNdc,
          ParamType.String,
        ),
        'frequency_type': serializeParam(
          _frequencyType,
          ParamType.Enum,
        ),
        'times_per_day': serializeParam(
          _timesPerDay,
          ParamType.int,
        ),
        'date_recorded': serializeParam(
          _dateRecorded,
          ParamType.DateTime,
        ),
        'dosage_unit': serializeParam(
          _dosageUnit,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrackedMedicationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrackedMedicationStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        productNdc: deserializeParam(
          data['product_ndc'],
          ParamType.String,
          false,
        ),
        frequencyType: deserializeParam<FrequencyType>(
          data['frequency_type'],
          ParamType.Enum,
          false,
        ),
        timesPerDay: deserializeParam(
          data['times_per_day'],
          ParamType.int,
          false,
        ),
        dateRecorded: deserializeParam(
          data['date_recorded'],
          ParamType.DateTime,
          false,
        ),
        dosageUnit: deserializeParam(
          data['dosage_unit'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrackedMedicationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackedMedicationStruct &&
        id == other.id &&
        productNdc == other.productNdc &&
        frequencyType == other.frequencyType &&
        timesPerDay == other.timesPerDay &&
        dateRecorded == other.dateRecorded &&
        dosageUnit == other.dosageUnit;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, productNdc, frequencyType, timesPerDay, dateRecorded, dosageUnit]);
}

TrackedMedicationStruct createTrackedMedicationStruct({
  int? id,
  String? productNdc,
  FrequencyType? frequencyType,
  int? timesPerDay,
  DateTime? dateRecorded,
  String? dosageUnit,
}) =>
    TrackedMedicationStruct(
      id: id,
      productNdc: productNdc,
      frequencyType: frequencyType,
      timesPerDay: timesPerDay,
      dateRecorded: dateRecorded,
      dosageUnit: dosageUnit,
    );
