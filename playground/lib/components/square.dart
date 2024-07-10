import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        color: Colors.deepPurple,
        height: 200,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
