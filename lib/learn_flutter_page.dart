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
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("Elevated Button Clicked");
            },
            child: const Text("Elevated Button"),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("Outlined Button Clicked");
            },
            child: const Text("Outlined Button"),
          ),
          TextButton(
            onPressed: () {
              debugPrint("Text Button Clicked");
            },
            child: const Text("Text Button"),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint("Gesture Detector Clicked");
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.deepOrange,
                ),
                Text("Row Widget"),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
