import 'dart:convert';

class Location {
  final String flag;
  final String name;
  final String coordinates;

  Location({
    required this.flag,
    required this.name,
    required this.coordinates,
  });

  Location copyWith({
    String? flag,
    String? name,
    String? coordinates,
  }) {
    return Location(
      flag: flag ?? this.flag,
      name: name ?? this.name,
      coordinates: coordinates ?? this.coordinates,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'flag': flag,
      'name': name,
      'coordinates': coordinates,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      flag: map['flag'],
      name: map['name'],
      coordinates: map['coordinates'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() =>
      'Location(flag: $flag, name: $name, coordinates: $coordinates)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.flag == flag &&
        other.name == name &&
        other.coordinates == coordinates;
  }

  @override
  int get hashCode => flag.hashCode ^ name.hashCode ^ coordinates.hashCode;
}
