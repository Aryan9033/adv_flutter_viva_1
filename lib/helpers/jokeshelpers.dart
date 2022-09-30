import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/jokesmodels.dart';

class JokesAPIHelpers {
  JokesAPIHelpers._();

  static final JokesAPIHelpers jokesAPIHelpers = JokesAPIHelpers._();

  final String BASE_URl = "https://api.chucknorris.io/jokes/random";

  Future<Jokes?> fetchJokesdata() async {
    http.Response jokes = await http.get(Uri.parse(BASE_URl));

    if (jokes.statusCode == 200) {
      Map<String, dynamic> decodedData = jsonDecode(jokes.body);

      Jokes res = Jokes.formJSON(json: decodedData);

      return res;
    } else {
      return null;
    }
  }
}
