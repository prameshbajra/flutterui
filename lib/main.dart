import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Dice'),
        ),
        body: const SafeArea(
          child: XylophonePage(),
        ),
      ),
    );
  }
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final audioPlayer = AudioPlayer();
        audioPlayer.play(UrlSource(
            'https://github.com/londonappbrewery/xylophone-flutter/raw/master/assets/note1.wav'));
      },
      child: const Text('Play'),
    );
  }
}
