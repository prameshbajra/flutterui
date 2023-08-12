import 'package:flutter/material.dart';
import 'package:todey/component/task_item.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskItem(),
        TaskItem(),
      ],
    );
  }
}
