import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: decisionmaker(),
  ),
);

class decisionmaker extends StatelessWidget {
  const decisionmaker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Ask Me Anything")
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
      onPressed: (){
        setState(() {
          ballNo = Random().nextInt(5) + 1;
        });
      }, 
      child: Image.asset("images/ball$ballNo.png"),
      ),
    );
  }
}
