import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/riverpod/river_base_service.dart';
import 'package:my_first_app/riverpod/river_post_model.dart';

class UserService extends BaseService {
  Future<RandomUser?> getRandomUserApi() async {
    try {
      final response = await getHttp('');
      log(response.body, name: 'getRandomUserApi');
      final userMap = json.decode(response.body);

      if (response.statusCode != 200) return null;
      RandomUser user = RandomUser.fromJson(userMap['results'][0]);

      log(userMap.toString(), name: 'getRandomUserApi response');

      return user;
    } catch (e, s) {
      log(e.toString(), name: 'error getRandomUserApi', stackTrace: s);
      return null;
    }
  }
  
}

