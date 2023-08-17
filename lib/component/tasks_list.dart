import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/component/task_item.dart';
import 'package:todey/models/task.dart';
import 'package:todey/provider.dart';

class TasksList extends StatefulWidget {
  TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<TaskListProvider>(context).tasks;
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
