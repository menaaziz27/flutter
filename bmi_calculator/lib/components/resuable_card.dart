import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      this.colour = const Color(0xFF1D1E33),
      this.childCard,
      this.onPress});

  final Color colour;
  final Widget? childCard;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: childCard,
      ),
    );
  }
}
