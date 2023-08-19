import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/provider.dart';

class TaskItem extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function(bool?) onChanged;

  const TaskItem({
    super.key,
    required this.taskName,
    required this.isDone,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        child: Text(
          taskName,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            decoration: isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        onTap: () => {
          Provider.of<TaskListProvider>(context, listen: false)
              .removeTask(taskName),
        },
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: onChanged,
      ),
    );
  }
}
