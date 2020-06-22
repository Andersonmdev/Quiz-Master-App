import 'package:flutter/material.dart';
import 'package:quizmasterApp/components/theme_widget.dart';
import 'package:quizmasterApp/models/theme_model.dart';

class SelectTheme extends StatelessWidget {
  final List<ThemeModel> _themes = [
    ThemeModel(id: 1, name: 'Todos os temas', imageTheme: 'assets/images/theme_icon.png'),
    ThemeModel(id: 2, name: 'Tema aleatório', imageTheme: 'assets/images/theme_icon.png'),
    ThemeModel(id: 3, name: 'História', imageTheme: 'assets/images/theme_icon.png'),
    ThemeModel(id: 4, name: 'Filmes', imageTheme: 'assets/images/theme_icon.png'),
    ThemeModel(id: 5, name: 'Séries', imageTheme: 'assets/images/theme_icon.png'),
    ThemeModel(id: 6, name: 'Esporte', imageTheme: 'assets/images/theme_icon.png'),
    ThemeModel(id: 7, name: 'Jogos', imageTheme: 'assets/images/theme_icon.png'),
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
                );
              }).toList(),
            ),
          ),
        )
      ),
    );
  }
}
