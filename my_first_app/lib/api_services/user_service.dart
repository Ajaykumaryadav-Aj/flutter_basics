import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/base_service.dart';
import 'package:my_first_app/models/api_user_model.dart';
import 'package:my_first_app/utils/api_urls.dart';

class UserService extends BaseServices {
  Future<List<ApiUser>?> getUsersApi() async {
    // try {
    final response = await getHttp(ApiUrlis.user);
    log(response.body, name: 'getUsersApi');
    final userMapList = json.decode(response.body);
    // as List<Map<String, dynamic>>;

    if (response.statusCode != 200) return null;
    List<ApiUser> userList =
        List<ApiUser>.from(userMapList.map((e) => ApiUser.fromJson(e)));

    log(userMapList.toString(), name: 'getUserapi response');
    return userList;
    // } catch (e, s) {
    //   log(e.toString(), name: 'error getuserApi', stackTrace: s);
    //   return null;
    // }
  }
}
