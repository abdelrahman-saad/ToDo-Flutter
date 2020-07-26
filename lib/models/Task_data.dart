import 'package:flutter/foundation.dart';
import 'Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy carrots'),
    Task(name: 'buy tomato'),
  ];
  void addTask(String taskname) {
    final task = Task(name: taskname);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get Count => _tasks.length;

  void UpdateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void DeleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
