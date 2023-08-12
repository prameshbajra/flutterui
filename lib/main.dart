import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Todoey(),
    );
  }
}
