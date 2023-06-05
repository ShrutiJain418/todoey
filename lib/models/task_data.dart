// ignore_for_file: prefer_final_fields

import 'package:flutter/foundation.dart';
import 'package:todoey/models/tasks.dart';

import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Meditation',
    ),
    Task(name: 'Complete Flutter Project'),
    Task(name: 'Fill up a registration form '),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTextTitle) {
    final task = Task(name: newTextTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
