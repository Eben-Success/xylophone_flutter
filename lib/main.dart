import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void playSound(int soundNum) {

      final player = AudioCache();
      player.play('note$soundNum.wav');
    }

    Expanded buildKey() {
      return Expanded(
        child: Container(
          color: Colors.yellow,
          child: TextButton(
            onPressed: () {
              playSound(1);
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
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
            buildKey(),
          ],
        )
      )
    );
  }
}
