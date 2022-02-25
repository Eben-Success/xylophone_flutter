import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void playSound(int soundNum) {

      final player = AudioCache();
      player.play('note$soundNum.wav');
    }

    Expanded buildKey({required Color color, required int soundNum}) {
      return Expanded(
        child: Container(
          color: color,
          child: TextButton(
            onPressed: () {
              playSound(soundNum);
            }, child: Text(''),
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Center(
            child: Text('Xylophone Piano',
                style: TextStyle(
                  fontSize: 16.0,
                ),),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNum: 1),
            buildKey(color: Colors.blue, soundNum: 2),
            buildKey(color: Colors.yellow, soundNum: 3),
            buildKey(color: Colors.purple, soundNum: 4),
            buildKey(color: Colors.orange, soundNum: 5),
            buildKey(color: Colors.green, soundNum: 6),
            buildKey(color: Colors.indigo, soundNum: 7),
          ],
        )
      )
    );
  }
}
