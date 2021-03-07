import 'package:meta/meta.dart';
import 'dart:math' as math;

class Person {
  final int id;
  final String name;
  final int age;
  final double height;
  final double weight;

  Person(
      {@required this.id,
      @required this.name,
      @required this.age,
      @required this.height,
      @required this.weight});

  double get imc {
    var result = weight / math.pow(height, 2);
    result *= 100;
    return result.roundToDouble() / 100;
  }

  bool get isOlder {
    return age >= 18;
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: int.parse(map['id']),
      name: map['name'],
      age: map['age'],
      height: map['height'] * 1.0,
      weight: map['weight'] * 1.0,
    );
  }
}
