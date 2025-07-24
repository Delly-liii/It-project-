import 'dart:convert';

import 'package:training2/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

class ApiServices {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  static const String newUrl = 'https://reqres.in/api/users?page=1';
  static const String local = 'http://10.0.2.2:5000/api/books/fetchAllBooks';

  Future<List<User>> fetchUsers() async {
    List<User> fetchedUsers = [];
    final response = await http.get(Uri.parse("$baseUrl/users"));
    print("response.statusCode");
    print(response.statusCode);
    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      print('data: $data');
      fetchedUsers = data.map((user) => User.fromMap(user)).toList();
      print('Fetched Users: $fetchedUsers');
      return fetchedUsers;
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<void> fetchAndParseXml() async {
    print('Xml start...........');
    final response = await http.get(
      Uri.parse('https://www.w3schools.com/xml/note.xml'),
    );
    if (response.statusCode == 200) {
      final document = xml.XmlDocument.parse(response.body);

      final textual = document.descendants
          .whereType<xml.XmlText>()
          .map((text) => text.value.trim())
          .where((string) => string.isNotEmpty)
          .join('\n');

      print("textual:$textual");
    } else {
      print('Failed to load XML');
      throw Exception('Failed to load users');
    }
  }
}
