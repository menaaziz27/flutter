import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Ask Me Anything',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            changeBallNumber();
          },
          // disable the button's splash effect
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
