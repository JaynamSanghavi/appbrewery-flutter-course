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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/display.jpg"),
              ),

              Text(
                "Jaynam Sanghavi",
                style: TextStyle(
                  fontFamily: "RobotoMono",
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Developer".toUpperCase(),
                style: TextStyle(
                  fontFamily: "Serif",
                  letterSpacing: 3.0,
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),

              SizedBox(
                height: 10.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
            
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),

                    title: Text(
                      "+91 9167550266",
                      style: TextStyle(
                        fontFamily: "Serif",
                        letterSpacing: 3.0,
                        fontSize: 17.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.w900,
                      ),
                    ),


                  ),
                ),


              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),

                    title: Text(
                      "jaynam123@gmail.com",
                      style: TextStyle(
                        fontFamily: "Serif",
                        fontSize: 17.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.w900,
                      ),
                    ),


                  ),
                ),


              
            ],
          )
        ),
      ),
    );
  }
}

