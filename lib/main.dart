import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.yellow,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {

                    // final AudioCache player = AudioCache();
                    final player = AudioCache();

                    player.play('note1.wav');
                  }, child: Text(''),
                ),
              ),

              Container(
                color: Colors.blue,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {

                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Text(''),
                ),
              ),

              Container(
                color: Colors.green,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {

                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                  child: Text(''),
                )
              ),

              Container(
                color: Colors.purple,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                  child: Text(''),
                ),
              ),

              Container(
                color: Colors.orange,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                  child: Text(''),
                ),
              ),

              Container(
                color: Colors.teal,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {

                    final player = AudioCache();
                    player.play('note6.wav');
                  },
                  child: Text(''),

                )
              ),

              Container(
                color: Colors.brown,
                height: 70.0,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note7.wav');
                  },
                  child: Text(''),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
