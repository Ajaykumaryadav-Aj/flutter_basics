import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';

import 'package:http/http.dart';
import 'package:my_first_app/api_services/base_service.dart';
import 'package:my_first_app/utils/api_urls.dart';

class UserService extends BaseServices {
  Future getUsersApi() async {
    final response =await getHttp(ApiUrlis.user);
    
    log(response.body, name: 'body');
    final userMap= json.decode(response.body);
  }
}
