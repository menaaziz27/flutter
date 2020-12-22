import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/mina.jpg'),
            ),
            Text(
              "Mina Aziz",
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 33.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  fontFamily: "SourceSansPro",
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 200.0,
              child: Divider(
                color: Colors.teal[50],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "+20 127 406 2900",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0,
                      color: Colors.teal,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "menaaziz27@gmail.com",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "SourceSansPro",
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
