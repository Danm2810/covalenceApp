import 'package:collection/collection.dart';

enum EventType {
  Appointment,
  Reminder,
}

enum FrequencyType {
  daily,
  multipleDaily,
  weekly,
}

enum NotifType {
  Appointment,
  Medication,
  NewReport,
  Badge,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (EventType):
      return EventType.values.deserialize(value) as T?;
    case (FrequencyType):
      return FrequencyType.values.deserialize(value) as T?;
    case (NotifType):
      return NotifType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
