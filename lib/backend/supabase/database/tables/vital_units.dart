import '../database.dart';

class VitalUnitsTable extends SupabaseTable<VitalUnitsRow> {
  @override
  String get tableName => 'vital_units';

  @override
  VitalUnitsRow createRow(Map<String, dynamic> data) => VitalUnitsRow(data);
}

class VitalUnitsRow extends SupabaseDataRow {
  VitalUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VitalUnitsTable();

  String get unitId => getField<String>('unit_id')!;
  set unitId(String value) => setField<String>('unit_id', value);

  String? get vitalId => getField<String>('vital_id');
  set vitalId(String? value) => setField<String>('vital_id', value);

  String get unitName => getField<String>('unit_name')!;
  set unitName(String value) => setField<String>('unit_name', value);

  String? get unitSymbol => getField<String>('unit_symbol');
  set unitSymbol(String? value) => setField<String>('unit_symbol', value);
}
