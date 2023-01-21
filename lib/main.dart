import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xylophoneBtn(Colors.red, 'note1.wav'),
              xylophoneBtn(Colors.orange, 'note2.wav'),
              xylophoneBtn(Colors.yellow, 'note3.wav'),
              xylophoneBtn(Colors.green, 'note4.wav'),
              xylophoneBtn(Colors.teal, 'note5.wav'),
              xylophoneBtn(Colors.blue, 'note6.wav'),
              xylophoneBtn(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(String audioPath) async {
    final player = AudioPlayer();
    await player.play(AssetSource(audioPath));
  }

  Widget xylophoneBtn(Color color, String audioPath) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(audioPath);
        },
        child: null,
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }
}
