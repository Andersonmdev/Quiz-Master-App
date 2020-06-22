import 'package:flutter/material.dart';

class QuestionModel {
  String question;
  List<String> answers;

  QuestionModel({
    @required this.question,
    @required this.answers,
  }); 
}