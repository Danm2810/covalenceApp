import '../database.dart';

class VitalListTable extends SupabaseTable<VitalListRow> {
  @override
  String get tableName => 'vital_list';

  @override
  VitalListRow createRow(Map<String, dynamic> data) => VitalListRow(data);
}

class VitalListRow extends SupabaseDataRow {
  VitalListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VitalListTable();

  String get vitalId => getField<String>('vital_id')!;
  set vitalId(String value) => setField<String>('vital_id', value);

  String get vitalName => getField<String>('vital_name')!;
  set vitalName(String value) => setField<String>('vital_name', value);
}
