import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin{
  Database? myDatabase;

  static final DBAdmin db = DBAdmin._();
  DBAdmin._();

  checkDatabase(){
    if (myDatabase !=null) {
      return myDatabase;
    }
    myDatabase = initDatabase(); //crear la base de datos
    return myDatabase;
  }
  initDatabase()async{
    Directory directory =  await getApplicationDocumentsDirectory();
    String path = join(directory.path, "Task.db");
    await openDatabase(path, version: 1, onOpen: (db){},
      onCreate:  (Database dbx, int version){
      dbx.execute("CREATE TABLE task(id INTEGER PRIMERY KEY AUTOINCREMERT, title TEXT, description TEXT, status TEXT)");
      });
  }
}