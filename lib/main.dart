import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildKey({Color color, int SoundNuber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(SoundNuber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple, SoundNuber: 1),
              buildKey(color: Colors.indigo, SoundNuber: 2),
              buildKey(color: Colors.green, SoundNuber: 3),
              buildKey(color: Colors.yellow, SoundNuber: 4),
              buildKey(color: Colors.orange, SoundNuber: 5),
              buildKey(color: Colors.blue, SoundNuber: 6),
              buildKey(color: Colors.red, SoundNuber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
