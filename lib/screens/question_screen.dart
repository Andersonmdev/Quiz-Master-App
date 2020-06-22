import 'package:flutter/material.dart';
import 'package:quizmasterApp/components/answerButton_widget.dart';
import 'package:quizmasterApp/components/question_widget.dart';
import 'package:quizmasterApp/models/theme_model.dart';

class QuestionScreen extends StatefulWidget {
  final ThemeModel theme;

  QuestionScreen({
    this.theme,
  });

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestion = 0;
  void nextQuestion(int buttonId) {
    setState(() {
      currentQuestion++;
    });
    print(buttonId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 32.0,
          color: Color(0xFF45B6F3),
          splashColor: Colors.transparent,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.theme.name),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            QuestionWidget(
              question: widget.theme.questions[currentQuestion],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  AnswerButtonWidget(
                    answer: widget.theme.questions[currentQuestion].answers[0],
                    callback: () => nextQuestion(0),
                  ),
                  AnswerButtonWidget(
                    answer: widget.theme.questions[currentQuestion].answers[1],
                    callback: () => nextQuestion(1),
                  ),
                  AnswerButtonWidget(
                    answer: widget.theme.questions[currentQuestion].answers[2],
                    callback: () => nextQuestion(2),
                  ),
                  AnswerButtonWidget(
                    answer: widget.theme.questions[currentQuestion].answers[3],
                    callback: () => nextQuestion(3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
