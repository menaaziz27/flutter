import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

// expanded has to be in a row or column so it can take up the available space
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.deepPurple,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.pink,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
