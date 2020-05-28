import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title : Center(
             child : Text("Dicee"),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  
  static Random random = new Random();
   final player = AudioCache();
  
  var ldn = random.nextInt(5) + 1;
  var rdn = random.nextInt(5) + 1;
  
  void randomGenerate(){
    ldn = random.nextInt(6) + 1;
    rdn = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child : FlatButton(
              onPressed: (){
                setState(() {
                  player.play('effect.mp3');
                  randomGenerate();
                });
              }, 
              child: Image.asset("images/dice"+ ldn.toString() +".png"),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child : FlatButton(
              onPressed: (){
                setState(() {
                  player.play('effect.mp3');
                  randomGenerate();
                });
              }, 
              child: Image.asset("images/dice$rdn.png"),
            ),
          ),
        ],
      ),
    );
  }
}
