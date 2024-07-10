import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ButtomButton extends StatelessWidget {
  const ButtomButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
  });

  final String buttonTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottomContainerColour,
          height: kBottomContainerHeight,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Text(buttonTitle, style: kLargeButtonTextStyle),
          )),
    );
  }
}
