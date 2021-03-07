import 'package:test/test.dart';

//tags -> contextos onde os testes precisam ser executados

void main() {
  test('isWorker', () {
    final name = 'joao';
    expect(name, isA<String>());
    expect(name, equals('joao'));
    expect(name, isNotNull);
    expect(name, contains('oa'));

    expect(name,
        allOf([isA<String>(), equals('joao'), isNotNull, contains('oa')]));
  });

  test('throw error ', () {
    expect(() => int.parse('x'), throwsException);
  });

  test('throw error ', () async {
    await expect(() => int.parse('x'), throwsException);
  }, timeout: Timeout(const Duration(seconds: 60)));

  test('throw error ', () {
    expect(() => int.parse('x'), throwsException);
  }, skip: 'falta terminar os casos de teste');

  test('throw error ', () {
    expect(() => int.parse('x'), throwsException);
  }, tags: 'web');

  // dart test -p chrome - t web
}
