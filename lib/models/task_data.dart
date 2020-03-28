import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(title: 'Start adding your tasks')];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(String newTaskTitle) {
    _tasks.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleState();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  int get taskCount => _tasks.length;
}
