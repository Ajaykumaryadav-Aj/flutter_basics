import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';

class Utils {
  static bool scrollNotification(Object? notification, VoidCallback callback) {
    if (notification is ScrollEndNotification) {
      final before = notification.metrics.extentBefore;
      final max = notification.metrics.maxScrollExtent;
      if (before == max) callback();
    }
    return false;
  }

  static void snackbar(String text) {
    messangerkey.currentState?.hideCurrentSnackBar();
    messangerkey.currentState?.showSnackBar(const SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text('Product added'),
    ));
  }
}
