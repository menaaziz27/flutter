import 'package:flutter/material.dart';
import 'package:navigations_demo/screen2.dart';
import 'screen0.dart';
import 'screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Screen0(),
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)>{
        '/': (context) => Screen0(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
      },
    );
  }
}
