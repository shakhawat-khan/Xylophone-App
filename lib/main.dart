import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num)
  {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({required Color color ,required int num} )
  {
    return Expanded(
      child: ElevatedButton(onPressed: (){
        playSound(num);

      },
        child:const Text(''),
        style:ElevatedButton.styleFrom(
            primary: color
        ) , ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildKey(color: Colors.red,num: 1),
              buildKey(color: Colors.orange,num: 2),
              buildKey(color: Colors.yellow,num: 3),
              buildKey(color: Colors.green,num: 4),
              buildKey(color: Colors.teal,num: 5),
              buildKey(color: Colors.blue,num: 6),
              buildKey(color: Colors.purple,num: 7),

            ],
          ),
        ),
      ),
    );
  }
}
