
import 'dart:convert';

import 'package:http/http.dart' as http;

class DataFetcher{

  String _url = "http://192.168.1.101:8080/getOneQuestion/";

  Future<dynamic> getQuestion(int id) async {
    http.Response response = await http.get(_url +id.toString());
    return jsonDecode(response.body);
  }
}