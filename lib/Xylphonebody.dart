import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

class XuloPhonebody extends StatefulWidget {
  @override
  _XuloPhonebodyState createState() => _XuloPhonebodyState();
}

class _XuloPhonebodyState extends State<XuloPhonebody> {
  Widget SoundKey({Color color, int number}) {
    return FlatButton(
      color: color,
      height: 70,
      onPressed: () {
        playsound(number);
      },
      child: Text(""),
    );
  }

  void playsound(int number) {
    Audio player = Audio.load("assets/assets_note$number.wav");
    player.play();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          "Click the Colors below to create your Sounds",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SoundKey(color: Colors.green, number: 1),
        SoundKey(color: Colors.red, number: 2),
        SoundKey(color: Colors.yellow, number: 3),
        SoundKey(color: Colors.black, number: 4),
        SoundKey(color: Colors.blue, number: 5),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90, right: 90),
          child: ElevatedButton(
            child: Text("About Devolper"),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
