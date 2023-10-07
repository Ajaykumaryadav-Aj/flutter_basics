import 'package:my_first_app/my_todo/todo_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static const _dbName = 'todo.db';
  static const _tableName = 'todo';
  static const _version = 1;

  DbHelper._();
  static final instance = DbHelper._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await openDB();
    return _database!;
    
  }

  static Database? _database;

  Future<Database> openDB() async {
    final database = await openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE $_tableName( id INTEGER PRIMARY KEY,title TEXT, body TEXT )');
      }, 
      version: _version,
    );
    // _database = database;
    return database;
  }

  Future<void> createTodo(TodoModel model) async {
    final db = await database;
    await db.insert(
      _tableName,
      model.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TodoModel>> getTodos() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(_tableName);
    return List.generate(maps.length, (i) => TodoModel.fromJson(maps[i]));
  }

  Future<void> updateTodos(TodoModel todo) async {
    final db = await database;

    await db
        .update(_tableName, todo.toMap(), where: 'id= ?', whereArgs: [todo.id]);
  }

  Future<void> delete(TodoModel todo) async {
    final db = await database;

    await db.delete(_tableName,where: 'id = ?', whereArgs: [todo.id]);
  }
}
