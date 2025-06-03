class Habit {
  final int? id;
  final String name;
  final int completed;

  Habit({this.id, required this.name, this.completed = 0});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'completed': completed,
    };
  }

  factory Habit.fromMap(Map<String, dynamic> map) {
    return Habit(
      id: map['id'],
      name: map['name'],
      completed: map['completed'],
    );
  }
}
