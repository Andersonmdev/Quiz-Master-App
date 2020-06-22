import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quizmasterApp/screens/selectTheme_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 32.0,
          color: Color(0xFF45B6F3),
          splashColor: Colors.transparent,
          onPressed: () {},
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Color(0xFF45B6F3)],
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 120.0,
              ),
              child: Text(
                'Quiz Master',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Color(0xFF0C6493),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: ButtonTheme(
                height: 65.0,
                minWidth: 200.0,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectThemeScreen()),
                    );
                  },
                  color: Color(0xFF0C6493),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Novo Jogo',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
