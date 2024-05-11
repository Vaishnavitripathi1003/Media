import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import '../Entity/MasterData.dart';
import 'DataBaseEntity.dart';

class DatabaseHelper {
  static final _databaseName = "MyDiary.db";
  static final _databaseVersion = 1;
  static Database? _database;
  static  DatabaseHelper _instance = DatabaseHelper._createInstant();
  

  DatabaseHelper._createInstant();
  factory DatabaseHelper() {
    if(_instance==null)
      {
        _instance = DatabaseHelper._createInstant();
      }
    return _instance;
  }
  

  Future<Database?> get database async {
    if (_database == null) _database = await initDatabase();
    return _database;
  }

  // This method opens the database and creates it if it doesn't exist
  Future<Database> initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + '/' + _databaseName;
    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  // This method is called when the database is first created
  Future _onCreate(Database db, int version) async {
    // SQL code to create Master table
    await db.execute(DataBaseEntity.createTableMaster);
  }

  Future<int> insertVideo(MasterData video) async {
    int? c=0;
    final db = await database;
   c= await db?.insert(
      DataBaseEntity.masterTable,
      video.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return c!;
  }

  Future<List<MasterData>> fetchMasterData() async {
    final db = await database;
    List<Map<String, dynamic>> result = await db!.query(DataBaseEntity.masterTable);

    List<MasterData> masterDataList = [];
    result.forEach((row) {
      MasterData masterData = MasterData(
     row['TopSlider_Id'],
        row['TopSlider_Content'],
    row['Description'],
         row['Video_ID'],
         row['imagespath'],
      );
      masterDataList.add(masterData);
    });

    return masterDataList;
  }
}





