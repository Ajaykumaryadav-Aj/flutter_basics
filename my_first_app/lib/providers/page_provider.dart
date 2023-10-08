// import 'dart:math';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/user_service.dart';
import 'package:my_first_app/models/photo_model.dart';
import 'package:my_first_app/my_todo/db_helper.dart';
import 'package:my_first_app/my_todo/todo_model.dart';

class PageProvider extends ChangeNotifier {
  final service = UserService();

  List<PhotoModel> photos = [];

  // Future<void> getPhotosApi({int limit = 10, int offset = 1}) async {
  //   final response = service.getPhotosApi(limit, offset);
  //   debugPrint('$response getPhotos');

  // }

  List<TodoModel> todos = [];

  Future<void> getTodos() async {
    final response = await DbHelper.instance.getTodos();

    todos = response;
    notifyListeners();
  }

  Future<int> getPhotos({int limit = 10, int offset = 1}) async {
    final response = await service.getPhotosApi(limit, offset);
    debugPrint('$response getPhotos');
    log(response.toString(), name: 'getPhotos');
    List<PhotoModel> templist =
        List<PhotoModel>.from(response.map((e) => PhotoModel.fromJson(e)));
    offset == 1 ? photos = templist : photos += templist;
    notifyListeners();
    return templist.length;
  }
}
