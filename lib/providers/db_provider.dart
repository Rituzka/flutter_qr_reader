import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  //estas tres primeras lineas son para ejecutar el singleton
  static Database? _database;
  static final DBProvider db = DBProvider._();
  //esto significa el constructor privado de DBProvider
  DBProvider._();

//Con este getter obtenemos la _database en caso que haya sido instanciada y si no lo fue
//entonces se inicializa con el metodo initDB().
  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDB();

    return _database;
  }

  Future<Database> initDB() async {
    //path de donde almacenamos la database
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'ScansDB.db');
    print('path');

    //creacion de la database
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
CREATE TABLE Scans(
  id INTEGER PRIMARY KEY,
  type TEXT,
  value TEXT
)
''');
    });
  }
}
