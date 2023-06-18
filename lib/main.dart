import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Xylophone'),
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
  final _audioPlayer = AudioPlayer();

  _play(int noteNumber) async {
    _audioPlayer.play(AssetSource('note$noteNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () => _play(1),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
            child: const Text(''),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => _play(2),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green)),
            child: const Text(''),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => _play(3),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
            child: const Text(''),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => _play(4),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            child: const Text(''),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => _play(5),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple)),
            child: const Text(''),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => _play(6),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.pink)),
            child: const Text(''),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => _play(7),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.brown)),
            child: const Text(''),
          ),
        )
      ],
    );
  }
}
