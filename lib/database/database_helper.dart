import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:gastos_personales/models/gasto.dart';
import 'package:gastos_personales/models/categoria.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('gastos.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE gastos (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        monto REAL NOT NULL,
        categoria TEXT NOT NULL,
        descripcion TEXT NOT NULL,
        fecha TEXT NOT NULL
      )
    ''');
  }
}
