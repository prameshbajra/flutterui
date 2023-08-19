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

  void toggleDone(int index) {
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }

  int get activetaskCount {
    return tasks.where((element) => !element.isDone).length;
  }
}
