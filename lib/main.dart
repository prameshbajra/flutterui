import 'package:flutter/material.dart';
import 'package:todey/screens/tasks_screen.dart';

void main() async {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todoey',
      home: TodosScreen(),
    );
  }
}
