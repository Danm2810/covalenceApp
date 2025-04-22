import '../database.dart';

class BadgesTable extends SupabaseTable<BadgesRow> {
  @override
  String get tableName => 'badges';

  @override
  BadgesRow createRow(Map<String, dynamic> data) => BadgesRow(data);
}

class BadgesRow extends SupabaseDataRow {
  BadgesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BadgesTable();

  String get badgeId => getField<String>('badge_id')!;
  set badgeId(String value) => setField<String>('badge_id', value);

  String get badgeName => getField<String>('badge_name')!;
  set badgeName(String value) => setField<String>('badge_name', value);

  String get badgeDescription => getField<String>('badge_description')!;
  set badgeDescription(String value) =>
      setField<String>('badge_description', value);
}
