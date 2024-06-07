// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
//trial comment 1
void main() {
  runApp(Xylophone());
}

Widget keyMake(Color c, int i) {
  Audio a = Audio.load('tones/note$i.wav');
  return Expanded(
    child: InkWell(
      child: Container(
        width: double.infinity,
        color: c,
      ),
      onTap: () {
        a.play();
      },
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: [
              keyMake(Colors.red, 1),
              keyMake(Colors.yellowAccent, 2),
              keyMake(Colors.orange, 3),
              keyMake(Colors.blueAccent, 4),
              keyMake(Colors.greenAccent, 5),
              keyMake(Colors.redAccent, 6),
              keyMake(Colors.orangeAccent, 7),
              keyMake(Colors.yellowAccent, 8),
              keyMake(Colors.lightBlueAccent, 9),
              keyMake(Colors.redAccent, 10),
            ],
          ),
        ),
      ),
    );
  }
}
