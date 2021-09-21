import 'dart:convert';

class Payment {
  final String method;
  final String name;
  final String number;

  Payment({
    required this.method,
    required this.name,
    required this.number,
  });

  Payment copyWith({
    String? method,
    String? name,
    String? number,
  }) {
    return Payment(
      method: method ?? this.method,
      name: name ?? this.name,
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'method': method,
      'name': name,
      'number': number,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      method: map['method'],
      name: map['name'],
      number: map['number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Payment.fromJson(String source) =>
      Payment.fromMap(json.decode(source));

  @override
  String toString() => 'Payment(method: $method, name: $name, number: $number)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Payment &&
        other.method == method &&
        other.name == name &&
        other.number == number;
  }

  @override
  int get hashCode => method.hashCode ^ name.hashCode ^ number.hashCode;
}
