import '../database.dart';

class SymptomListTable extends SupabaseTable<SymptomListRow> {
  @override
  String get tableName => 'symptom_list';

  @override
  SymptomListRow createRow(Map<String, dynamic> data) => SymptomListRow(data);
}

class SymptomListRow extends SupabaseDataRow {
  SymptomListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SymptomListTable();

  String get symptomId => getField<String>('symptom_id')!;
  set symptomId(String value) => setField<String>('symptom_id', value);

  String get symptomName => getField<String>('symptom_name')!;
  set symptomName(String value) => setField<String>('symptom_name', value);

  String get commonSymptomName => getField<String>('common_symptom_name')!;
  set commonSymptomName(String value) =>
      setField<String>('common_symptom_name', value);
}
