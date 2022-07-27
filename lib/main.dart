import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color color, Color textColor, int numKey) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.setSource(AssetSource('note$numKey.wav'));
          },
          child: Text(
            'Note $numKey',
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(Colors.white, Colors.grey, 1),
              buildKey(Colors.green, Colors.lime[200], 2),
              buildKey(Colors.orange, Colors.yellow, 3),
              buildKey(Colors.white, Colors.grey, 4),
              buildKey(Colors.green, Colors.lime[200], 5),
              buildKey(Colors.orange, Colors.yellow, 6),
              buildKey(Colors.white, Colors.grey, 7),
            ],
          ),
        ),
      ),
    );
  }
}
