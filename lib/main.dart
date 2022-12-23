import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Expanded playSound(Color color, String noteNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () async {
          final player = AudioPlayer();
          await player.setSource(AssetSource('audios/note$noteNumber.wav'));
          player.resume();
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: <Widget>[
              playSound(Colors.red, '1'),
              playSound(Colors.orange, '2'),
              playSound(Colors.yellow, '3'),
              playSound(Colors.green, '4'),
              playSound(Colors.blue, '5'),
              playSound(Colors.blue.shade900, '6'),
              playSound(Colors.purple.shade800, '7'),
            ],
          ),
        ),
      ),
    );
  }
}
