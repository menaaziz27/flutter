import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      bmiResult,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      interpretation,
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ButtomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          ),
        ],
      ),
    );
  }
}
