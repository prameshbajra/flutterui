import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todey/provider.dart';
import 'package:todey/screens/tasks_screen.dart';

void main() async {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todoey',
        home: TodosScreen(),
      ),
    );
  }
}
