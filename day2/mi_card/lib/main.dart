import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.deepOrange,
                  width: 100, 
                  margin: EdgeInsets.only(bottom: 20),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.yellow,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                      
                    ),
                  ],
                ),

                Container(
                  color: Colors.blue,
                  width: 100,
                  margin: EdgeInsets.only(bottom: 20),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

