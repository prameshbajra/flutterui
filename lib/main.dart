import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.red,
                child: const Text('Container 1'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                    child: const Text('Container 2'),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: const Text('Container 2.1'),
                  )
                ],
              ),
              Container(
                color: Colors.blue,
                child: const Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
