import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class StudentDetails{
  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(),'dbSD.db');
    return openDatabase(path,onCreate: (db, version) {
      db.execute('''
      CREATE TABLE STUDENT(
      ID INTEGER PRIMARY KEY AUTOINCREMET,
      NAME TEXT NOT NULL,
      EMAIL TEXT NOT NULL
      )
      ''');
    },
      version: 1
    );
  }
  Future<int> insertStudent (Map<String,dynamic> StudentData) async {
    Database db = await initDatabase();
    return db.insert('STUDENT', StudentData);
  }

  Future<List<Map<String,dynamic>>> getAll () async {
    Database db = await initDatabase();
    return db.query('STUDENT');
  }

  Future<int> updateStudent (int id,Map<String,dynamic> UpdateStudent) async {
    Database db = await initDatabase();
    return db.update('STUDENT', UpdateStudent,where: 'id=?',whereArgs: [id]);
  }

  Future<int> deletStudent (int id ) async {
    Database db = await initDatabase();
    return db.delete('STUDENT',where: 'id=?',whereArgs: [id]);
  }
}