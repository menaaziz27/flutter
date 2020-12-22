import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("I am rich"),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/mobile.jpg'),
        ),
      ),
    ),
  ));
}
