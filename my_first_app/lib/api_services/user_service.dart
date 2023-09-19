import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/base_service.dart';
import 'package:my_first_app/models/api_user_model.dart';
import 'package:my_first_app/utils/api_urls.dart';

class UserService extends BaseServices {
  Future getUsersApi() async {
    final response = await getHttp(ApiUrlis.user);

    log(response.body, name: 'body');
    final userMapList =
        json.decode(response.body) as List<Map<String, dynamic>>;

    final userList = userMapList.map((e) => ApiUser.fromJson(e)).toList();
    return userList;
  }
}
