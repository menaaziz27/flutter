import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment(-1, -1),
      // padding: EdgeInsets.all(20),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // neomorphic effect
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
