import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

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
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.orange,
                      // padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.orange),
                  child: Text('Orange'),
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.yellow,
                      // padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.yellow),
                  child: Text('Yellow'),
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      // padding: EdgeInsets.all(16.0),
                      primary: Colors.green,
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.green),
                  child: Text('Green'),
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.blue,
                      // padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.blue),
                  child: Text('Blue'),
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.pink,
                      // padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.pink),
                  child: Text('Pink'),
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.tealAccent,
                      // padding: EdgeInsets.all(16.0),
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.tealAccent),
                  child: Text('TealAccent'),
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
