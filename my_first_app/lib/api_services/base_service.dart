import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:my_first_app/utils/api_urls.dart';

class BaseServices {
  Future<http.Response> getHttp(String api) async {
    final url = ApiUrlis.baseUrl + api;

    log(url, name: 'getHttp');
    final response = await 
    http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }
}
