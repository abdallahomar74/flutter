

import 'package:section_project/features/dashboard/modules/users/model/repo/parnet_data.dart';
import 'package:section_project/features/dashboard/modules/users/model/user_model.dart';
import 'package:sqflite/sqflite.dart';
class DatabaseRepo extends P_Repositry {
  DatabaseRepo._init();

  static DatabaseRepo? _singletoneObject;
  static late Database _database;

  static Future<DatabaseRepo> get instance async {
    if (_singletoneObject == null) {
      await _initDatabase();
      _singletoneObject = DatabaseRepo._init();
    }
    return _singletoneObject!;
  }

  
  static Future<void> _initDatabase() async {
    final String databasePath = await getDatabasesPath();

    final String path = databasePath + "/users.db";

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
  }

  static Future<void> _createTables(Database db, _) async {
    await db.execute("""
CREATE TABLE user (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
name TEXT NOT NULL, 
address TEXT )
""");
  }

  @override
  Future<void> delete_data({required Comparable<num> id}) async {
    await _database.delete('user', where: 'id=?', whereArgs: [id]);
  }

  @override
  Future<List<UModel>> fetch_data() async {
    return (await _database.query('user')).map((e) => UModel.fromJson(e)).toList();
  }

  @override
  Future<void> insert_data({required String name, String? address}) async {
    await _database.insert('user', {'name': name, 'address': address});
  }
}