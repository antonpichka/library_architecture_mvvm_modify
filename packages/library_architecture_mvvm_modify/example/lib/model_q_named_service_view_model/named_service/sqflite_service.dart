import 'package:library_architecture_mvvm_modify_todo/model/note/note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteService {
  static const constTableNote = "Note";
  static Database? _database;

  Future<Database?> get getDatabase async {
    if (_database != null) {
      return _database;
    }
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'todo.db');
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE $constTableNote ('
          'id INTEGER PRIMARY KEY, '
          '${Note.constParameterUuIdForSqflite} TEXT NOT NULL, '
          '${Note.constParameterNameForSqflite} TEXT NOT NULL, '
          '${Note.constParameterDescriptionForSqflite} TEXT NOT NULL, '
          '${Note.constParameterIsCompletedForSqflite} INTEGER NOT NULL)');
    });
    return _database;
  }
}
