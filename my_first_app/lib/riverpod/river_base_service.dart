import 'dart:developer';

import 'package:my_first_app/riverpod/river_urlis.dart';
import 'package:http/http.dart' as http;


class BaseService {
  Future<http.Response> getHttp(String api) async {
    final url = ApiUrls.baseUrl + api;
    log(url, name: 'getHttp');

    final response = await http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    
    return response;
  }

}