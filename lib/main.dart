// Flutter audioplayer package
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int note) {
    // from documentation
    final player = AudioCache();
    player.play('note$note.wav'); // from assets
    // the package already assumes that the file is in a folder known as assets
  }

  // function returns the expanded class. therefore return type - Expanded
  // add default values to parameters, otherwise returns an error
  Expanded buildKey({Color keyColor = Colors.black, int keynumber = 1}) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(keyColor)),
        onPressed: () {
          playSound(keynumber);
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(keyColor: Colors.red, keynumber: 1),
                buildKey(keyColor: Colors.orange, keynumber: 2),
                buildKey(keyColor: Colors.yellow, keynumber: 3),
                buildKey(keyColor: Colors.green, keynumber: 4),
                buildKey(keyColor: Colors.blue, keynumber: 5),
                buildKey(keyColor: Colors.indigo, keynumber: 6),
                buildKey(keyColor: Colors.purple, keynumber: 7),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
