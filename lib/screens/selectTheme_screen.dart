import 'package:flutter/material.dart';
import 'package:quizmasterApp/components/theme_widget.dart';
import 'package:quizmasterApp/models/question_model.dart';
import 'package:quizmasterApp/models/theme_model.dart';
import 'package:quizmasterApp/screens/question_screen.dart';

class SelectThemeScreen extends StatelessWidget {
  final List<ThemeModel> _themes = [
    ThemeModel(id: 1, name: 'Todos os temas', imageTheme: 'assets/images/theme_icon.png', 
    questions: [
      QuestionModel(question: 'Pergunta 1', answers: ['Res 1', 'Res 2', 'Res 3', 'Res 4']),
      QuestionModel(question: 'Pergunta 2', answers: ['Res 1', 'Res 2', 'Res 3', 'Res 4']),
    ]),
    ThemeModel(id: 1, name: 'Aleatorio', imageTheme: 'assets/images/theme_icon.png', 
    questions: [
      QuestionModel(question: 'Pergunta 3', answers: ['Res 1', 'Res 2', 'Res 3', 'Res 4']),
      QuestionModel(question: 'Pergunta 4', answers: ['Res 1', 'Res 2', 'Res 3', 'Res 4']),
    ]),
  ];

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
        title: Text('Escolha uma opção'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Color(0xFF45B6F3)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child: GridView.count(
              crossAxisCount: 3,
              children: _themes.map((theme) {
                return ThemeWidget(
                  theme: theme,
                  onClick: (theme) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestionScreen(theme: theme)),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        )
      ),
    );
  }
}
