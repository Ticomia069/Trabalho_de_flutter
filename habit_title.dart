import 'package:flutter/material.dart';
import '../../models/habit.dart';

class HabitTile extends StatelessWidget {
  final Habit habit;
  final Function(bool?) onChanged;

  HabitTile({required this.habit, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(habit.name),
      trailing: Checkbox(value: habit.completed == 1, onChanged: onChanged),
    );
  }
}
