import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    // final player = AudioPlayer();
                    // player.play(AssetSource('note1.wav'));
                    playSound(1);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
