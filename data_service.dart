import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/habit.dart';

class DatabaseService {
  static Future<Database> getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'habits.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE habits(id INTEGER PRIMARY KEY, name TEXT, completed INTEGER)'
        );
      },
      version: 1,
    );
  }

  static Future<void> insertHabit(Habit habit) async {
    final db = await getDatabase();
    await db.insert('habits', habit.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Habit>> getHabits() async {
    final db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query('habits');
    return List.generate(maps.length, (i) => Habit.fromMap(maps[i]));
  }

  static Future<void> updateHabit(Habit habit) async {
    final db = await getDatabase();
    await db.update('habits', habit.toMap(), where: 'id = ?', whereArgs: [habit.id]);
  }
}
