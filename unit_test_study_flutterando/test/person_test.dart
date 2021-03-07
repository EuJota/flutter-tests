import 'package:test/test.dart';
import 'package:unit_test_study_flutterando/person.dart';

void main() {
  final person = Person(name: 'Joao', age: 23, height: 1.85, weight: 83);
  final person2 = Person(name: 'Joao', age: 18, height: 1.85, weight: 83);

  test('imc deve vir 24.25', () {
    expect(person.imc, 24.25);
  });

  group('isOlder | ', () {
    test('se a idade maior que 18, isOlder deve ser true', () {
      expect(person.isOlder, true);
    });

    test('se a idade igual 18, isOlder deve ser true', () {
      expect(person2.isOlder, true);
    });
  });
}
