import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart';
import 'quizbrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Questions app',
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Questions app"),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(),
            ),
          ),
        ));
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int questionAnswered = 0;

  void checkAnswer (bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();

    setState(() {
      if(!quizBrain.isFinished()) {
        if(userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(Icons.check, color: Colors.green));
          questionAnswered += 1;
        } else {
          scoreKeeper.add(Icon(Icons.close, color: Colors.red));
        }

        quizBrain.increamentScore();
      } else {
        // if the questions is completed
        Alert(context: context, title: "Finished!", desc: 'your score is $questionAnswered.').show();
        scoreKeeper = [];
        quizBrain.resetQuestionNumber();
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, color: Colors.blue),
            ),
          ),
        )),
        Expanded(child: Padding(
          padding: EdgeInsets.all(10),
          child: FlatButton(
            onPressed: () {
              checkAnswer(false);
            },
            textColor: Colors.white,
            color: Colors.red,
            child: Text("False", style: TextStyle(color: Colors.white, fontSize: 25.0) ,),
          ),
        )),
        Expanded(child: Padding(
          padding: EdgeInsets.all(10),
          child: FlatButton(
            onPressed: () {
              checkAnswer(true);
            },
            textColor: Colors.white,
            color: Colors.green,
            child: Text("True", style: TextStyle(color: Colors.white, fontSize: 25.0) ,),
          ),
        )),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
