import 'package:test/test.dart';

void main() {
  //init state dos testes
  setUp(() {
    print('inicia o teste');
  });

  //dispose dos testes
  tearDown(() {
    print('destroi o teste');
  });

  //inicia o ciclo de vida de toda suit
  setUpAll(() {
    print('inicia suit');
  });

  //finaliza o ciclo de vida de toda suit
  tearDownAll(() {
    print('destrói suit');
  });

  test('isWorker', () {
    print('executando');
  });

  test('isWorker2', () {
    print('executando2');
  });
}
