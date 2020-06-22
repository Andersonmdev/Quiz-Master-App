import 'package:flutter/material.dart';
import 'package:quizmasterApp/models/question_model.dart';

class QuestionWidget extends StatelessWidget {
  final QuestionModel question;

  QuestionWidget({
    @required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question.question,
        style: TextStyle(
          fontSize: 32.0,
        ),
      ),
    );
  }
}
