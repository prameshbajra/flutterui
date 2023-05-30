import 'package:flutter/material.dart';

class LearnFlutterPage extends StatelessWidget {
  const LearnFlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Flutter UI'),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/eins.png'),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.deepPurple,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: const Center(
              child: Text(
                'Flutter UI',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
