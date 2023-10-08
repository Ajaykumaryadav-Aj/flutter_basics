import 'package:hive_flutter/hive_flutter.dart';

const boxName = 'todoBox';

class HiveDB {
  HiveDB._();
  static final instance = HiveDB._();
  static Box? _box;

  Box get box {
    if (_box != null) return _box!;
    _box = initBox();
    return _box!;
  }

  Box initBox() {
    return Hive.box(boxName);
  }
}
