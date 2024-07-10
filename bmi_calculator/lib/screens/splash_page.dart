import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/input');
    });

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('BMI calculator'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    ));
  }
}
