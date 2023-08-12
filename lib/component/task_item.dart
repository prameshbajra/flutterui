import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy milk',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
