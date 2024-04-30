import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'DataBaseEntity.dart';

class DatabaseHelper {
  static final _databaseName = "MyDiary.db";
  static final _databaseVersion = 1;
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  // This method opens the database and creates it if it doesn't exist
  Future _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  // This method is called when the database is first created
  Future _onCreate(Database db, int version) async {
    // SQL code to create Master table
    await db.execute(DataBaseEntity.createTableMaster);
  }
}
