import 'package:flutter/material.dart';
import 'package:navigations_demo/screen1.dart';
import 'package:navigations_demo/screen2.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
              ),
              child: Text('Go To Screen 1'),
              onPressed: () {
                //Navigate to Screen 1
                Navigator.pushNamed(context, '/screen1');
                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => Screen1()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Go To Screen 2'),
              onPressed: () {
                //Navigate to Screen 2
                Navigator.pushNamed(context, '/screen2');
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Screen2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
