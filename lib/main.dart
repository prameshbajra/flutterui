import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  foregroundImage: NetworkImage(
                      'https://prameshbajra.github.io/static/assets/img/landing/pramesh.jpg'),
                ),
                const SizedBox(height: 10),
                Text(
                  'Pramesh Bajracharya',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.pacifico().fontFamily,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(color: Colors.white),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+9779813457822',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'pe.messh@gmaill.com',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
