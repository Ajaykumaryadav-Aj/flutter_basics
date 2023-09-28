import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/base_service.dart';
import 'package:my_first_app/api_services/random_user_api.dart';
import 'package:my_first_app/utils/api_urls.dart';

class UserService extends BaseServices {
  Future<RandomUser?> getRandomUserApi() async {
    try {
      final response = await getHttp(ApiUrlis.baseUrl);
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
    
  

  

















// class UserService extends BaseServices {
//   Future<List<ApiUser>?> getUsersApi() async {
//     // try {
//       final response = await getHttp(ApiUrlis.user);
//       log(response.body, name: 'getUsersApi');
//       final userMapList = json.decode(response.body);
//       // as List<Map<String, dynamic>>;

//       if (response.statusCode != 200) return null;
//       List<ApiUser> userList =
//           List<ApiUser>.from(userMapList.map((e) => ApiUser.fromJson(e)));

//       log(userMapList.toString(), name: 'getUserapi response');
//       return userList;
//     // } catch (e, s) {
//     //   log(e.toString(), name: 'error getuserApi', stackTrace: s);
//     //   return null;
//     // }
//   }
// }
