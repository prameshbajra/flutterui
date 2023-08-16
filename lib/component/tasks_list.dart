import 'package:flutter/material.dart';
import 'package:todey/component/task_item.dart';
import 'package:todey/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk', isDone: true),
    Task(name: 'Buy eggs', isDone: true),
    Task(name: 'Buy bread', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskItem(
          taskName: tasks[index].name,
          isDone: tasks[index].isDone,
          onChanged: (bool? newValue) {
            setState(() {
              tasks[index].toggleDone(newValue ?? false);
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
