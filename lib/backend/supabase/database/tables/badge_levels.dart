import '../database.dart';

class BadgeLevelsTable extends SupabaseTable<BadgeLevelsRow> {
  @override
  String get tableName => 'badge_levels';

  @override
  BadgeLevelsRow createRow(Map<String, dynamic> data) => BadgeLevelsRow(data);
}

class BadgeLevelsRow extends SupabaseDataRow {
  BadgeLevelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BadgeLevelsTable();

  String get levelId => getField<String>('level_id')!;
  set levelId(String value) => setField<String>('level_id', value);

  String? get badgeId => getField<String>('badge_id');
  set badgeId(String? value) => setField<String>('badge_id', value);

  String get levelName => getField<String>('level_name')!;
  set levelName(String value) => setField<String>('level_name', value);

  int get condition => getField<int>('condition')!;
  set condition(int value) => setField<int>('condition', value);

  String? get levelDescription => getField<String>('level_description');
  set levelDescription(String? value) =>
      setField<String>('level_description', value);
}
