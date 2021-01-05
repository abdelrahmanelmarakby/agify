import 'dart:convert';

import 'package:api/model/dataModel.dart';
import 'package:http/http.dart' as http;

Future<int> getAge(String name) async {
  var response = await http.get("https://api.agify.io/?name=$name");
  var parsed = jsonDecode(response.body);
  return Age.fromJson(parsed).age;
}
