import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:unit_test_study_flutterando/person.dart';

class PersonRepository {
  //Client client;
  //https://603e544c48171b0017b2f269.mockapi.io/api/v1/person

  //PersonRepository(this.client);

  Future<List<Person>> getPerson(http.Client client) async {
    final response = await client
        .get('https://603e544c48171b0017b2f269.mockapi.io/api/v1/person');

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => Person.fromMap(e)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}
