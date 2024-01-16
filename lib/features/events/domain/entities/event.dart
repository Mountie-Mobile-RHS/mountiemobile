import 'package:flutter/foundation.dart';

class Event {
  final DateTime time;
  final String name;
  final String description;
  final List<String> tags;

  Event(this.time, this.name, this.description, this.tags);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Event &&
      other.time == time &&
      other.name == name &&
      other.description == description &&
      listEquals(other.tags, tags);
  }

  @override
  int get hashCode {
    return time.hashCode ^
      name.hashCode ^
      description.hashCode ^
      tags.hashCode;
  }
}
