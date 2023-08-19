import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/models/task.dart';
import 'package:todey/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30.0),
              TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(),
                  onChanged: (String newTaskName) {
                    taskName = newTaskName;
                  }),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Provider.of<TaskListProvider>(context, listen: false).addTask(
                    Task(name: taskName),
                  );
                  Navigator.pop(context);
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
