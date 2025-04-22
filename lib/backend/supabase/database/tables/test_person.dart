import '../database.dart';

class TestPersonTable extends SupabaseTable<TestPersonRow> {
  @override
  String get tableName => 'test_person';

  @override
  TestPersonRow createRow(Map<String, dynamic> data) => TestPersonRow(data);
}

class TestPersonRow extends SupabaseDataRow {
  TestPersonRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestPersonTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String? get levelId => getField<String>('level_id');
  set levelId(String? value) => setField<String>('level_id', value);

  String? get vitalId => getField<String>('vital_id');
  set vitalId(String? value) => setField<String>('vital_id', value);

  String? get symptomId => getField<String>('symptom_id');
  set symptomId(String? value) => setField<String>('symptom_id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get passwordHash => getField<String>('password_hash')!;
  set passwordHash(String value) => setField<String>('password_hash', value);
}
