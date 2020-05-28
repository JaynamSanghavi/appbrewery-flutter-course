import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
  

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(var no){
    player.play('note$no.wav');
  }

  Widget buildK(Color clr,int no,String text){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(no);
        }, 
        color: clr,
        child: Text(text),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              buildK(Colors.red,1,"SA"),
              buildK(Colors.orange,2,"RE"),
              buildK(Colors.yellow,3,"GA"),
              buildK(Colors.green,4,"MA"),
              buildK(Colors.green.shade900,5,"PA"),
              buildK(Colors.blue,6,"DHA"),
              buildK(Colors.purple,7,"NI"),
            ],
          ),
        ),
      ),
    );
  }
}
