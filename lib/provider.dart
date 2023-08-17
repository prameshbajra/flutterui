import 'package:flutter/material.dart';
import 'package:todey/models/task.dart';

class TaskListProvider extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks = tasks.where((element) => element.name == task.name).toList();
    notifyListeners();
  }
}
