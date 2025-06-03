import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';
import 'package:habit_tracker/screens/habit_detail_screen.dart';
import 'package:habit_tracker/screens/habit_list_screen.dart';
import 'package:habit_tracker/screens/home_screen.dart';
import 'package:habit_tracker/screens/settings_screen.dart';
import 'package:habit_tracker/screens/statistics_screen.dart';

void main() => runApp(HabitTrackerApp());

class HabitTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/add': (context) => AddHabitScreen(),
        '/list': (context) => HabitListScreen(),
        '/stats': (context) => StatisticsScreen(),
        '/settings': (context) => SettingsScreen(),
        '/details': (context) => HabitDetailScreen(),
      },
    );
  }
}
