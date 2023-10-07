import 'package:flutter/material.dart';
import 'package:my_first_app/my_todo/db_helper.dart';
import 'package:my_first_app/my_todo/todo_model.dart';

class PageProvider extends ChangeNotifier {
  Future<void> getPhotosApi({int limit = 10, int offset = 1}) async {}

  List<TodoModel> todos = [];

  Future<void> getTodos() async {
    final response = await DbHelper.instance.getTodos();

    todos = response;
    notifyListeners();
  }
}
