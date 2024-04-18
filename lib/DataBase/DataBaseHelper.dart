/*

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'DataBaseEntity.dart';
class DatabaseHelper {

  Database ? _database; //

Future<Database> get database async{
  if(_database!=null)
    {
      return _database!;
    }
  _database=await Future <Database>_initialize();
  return _database!;
}

Future<String>get fullPath async{
  const name='Mediaapp.db';
  final path=await getDatabasesPath();
  return join(path,name);
}

  Future <Database>_initialize() async{
  final path= await fullPath;
  var database=await OpenDatabase(
    path,
    version:1,
    onCreate:create,
    singleInstance:true,

  );
  return database;
  }

  Future<void> create(Database database,int version) async =>
      await database.execute(sql);




}*/
