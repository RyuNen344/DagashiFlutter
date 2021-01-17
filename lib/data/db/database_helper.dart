import 'package:dagashi_flutter/data/db/dagashi_database.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static final DatabaseHelper databaseHelper = DatabaseHelper._();

  static DagashiDatabase _database;

  Future<DagashiDatabase> get database async {
    if (_database == null) {
      _database = await DagashiDatabase.build();
    }
    return _database;
  }
}
