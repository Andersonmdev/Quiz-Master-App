import 'package:flutter/material.dart';
import 'package:quizmasterApp/models/question_model.dart';

class ThemeModel {
  int id;
  String name;
  String imageTheme;
  List<QuestionModel> questions;

  ThemeModel({
    @required this.id,
    @required this.name,   
    @required this.imageTheme,
    @required this.questions,
  }); 
}