

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/riverpod/river_pod_sevices.dart';
import 'package:my_first_app/riverpod/river_post_model.dart';

final userProvider = ChangeNotifierProvider((ref) => UserProvider());

class UserProvider extends ChangeNotifier {
  final service = UserService();

 

  RandomUser? randomUser;

  Future<RandomUser?> getRandomUser() async {
    final response = await service.getRandomUserApi();
    randomUser = response;
    log(response.toString(), name: 'randomuser');
    notifyListeners();
    return response;
  }

 
  }

  

 

 


















