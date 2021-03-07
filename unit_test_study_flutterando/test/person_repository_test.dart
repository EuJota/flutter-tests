import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:unit_test_study_flutterando/person_repository.dart';

class ClientMock extends Mock implements http.Client {}

void main() {
  group('getPerson', () {
    test('deve pegar uma lista de person', () async {
      final client = ClientMock();

      when(client
              .get('https://603e544c48171b0017b2f269.mockapi.io/api/v1/person'))
          .thenAnswer((_) async => http.Response(jsonReturn, 200));

      final list = await PersonRepository().getPerson(client);

      expect(list.isNotEmpty, equals(true));
      expect(list.first.name, equals('name 1'));
    });

    test('deve retornar um throw exception', () async {
      final client = ClientMock();

      when(client
              .get('https://603e544c48171b0017b2f269.mockapi.io/api/v1/person'))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(PersonRepository().getPerson(client), throwsException);
    });
  });
}

const jsonReturn =
    '[{"id":"1","name":"name 1","age":3,"weight":29,"height":21},{"id":"2","name":"name 2","age":28,"weight":46,"height":36},{"id":"3","name":"name 3","age":35,"weight":92,"height":10},{"id":"4","name":"name 4","age":10,"weight":76,"height":7},{"id":"5","name":"name 5","age":3,"weight":69,"height":65},{"id":"6","name":"name 6","age":46,"weight":63,"height":60},{"id":"7","name":"name 7","age":16,"weight":51,"height":64},{"id":"8","name":"name 8","age":57,"weight":97,"height":31},{"id":"9","name":"name 9","age":45,"weight":53,"height":43},{"id":"10","name":"name 10","age":84,"weight":86,"height":15},{"id":"11","name":"name 11","age":41,"weight":53,"height":80},{"id":"12","name":"name 12","age":59,"weight":18,"height":74},{"id":"13","name":"name 13","age":73,"weight":40,"height":68},{"id":"14","name":"name 14","age":30,"weight":62,"height":30},{"id":"15","name":"name 15","age":44,"weight":42,"height":6},{"id":"16","name":"name 16","age":8,"weight":43,"height":68},{"id":"17","name":"name 17","age":39,"weight":74,"height":16},{"id":"18","name":"name 18","age":50,"weight":39,"height":50},{"id":"19","name":"name 19","age":34,"weight":26,"height":32},{"id":"20","name":"name 20","age":85,"weight":59,"height":65},{"id":"21","name":"name 21","age":98,"weight":56,"height":39},{"id":"22","name":"name 22","age":37,"weight":3,"height":59},{"id":"23","name":"name 23","age":73,"weight":86,"height":83},{"id":"24","name":"name 24","age":63,"weight":60,"height":71},{"id":"25","name":"name 25","age":19,"weight":12,"height":98},{"id":"26","name":"name 26","age":94,"weight":2,"height":21},{"id":"27","name":"name 27","age":92,"weight":45,"height":5},{"id":"28","name":"name 28","age":60,"weight":95,"height":93},{"id":"29","name":"name 29","age":40,"weight":59,"height":13},{"id":"30","name":"name 30","age":30,"weight":12,"height":65},{"id":"31","name":"name 31","age":93,"weight":88,"height":69},{"id":"32","name":"name 32","age":15,"weight":40,"height":18},{"id":"33","name":"name 33","age":39,"weight":41,"height":39},{"id":"34","name":"name 34","age":58,"weight":0,"height":55},{"id":"35","name":"name 35","age":42,"weight":38,"height":79},{"id":"36","name":"name 36","age":12,"weight":79,"height":90},{"id":"37","name":"name 37","age":79,"weight":44,"height":95},{"id":"38","name":"name 38","age":78,"weight":84,"height":81},{"id":"39","name":"name 39","age":14,"weight":28,"height":99},{"id":"40","name":"name 40","age":49,"weight":6,"height":84},{"id":"41","name":"name 41","age":88,"weight":36,"height":38},{"id":"42","name":"name 42","age":56,"weight":94,"height":21},{"id":"43","name":"name 43","age":17,"weight":72,"height":5},{"id":"44","name":"name 44","age":38,"weight":76,"height":63},{"id":"45","name":"name 45","age":28,"weight":37,"height":6},{"id":"46","name":"name 46","age":14,"weight":38,"height":78},{"id":"47","name":"name 47","age":42,"weight":26,"height":50},{"id":"48","name":"name 48","age":80,"weight":76,"height":37},{"id":"49","name":"name 49","age":58,"weight":80,"height":46},{"id":"50","name":"name 50","age":60,"weight":10,"height":40}]';
