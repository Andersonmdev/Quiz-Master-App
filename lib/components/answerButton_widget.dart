import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  final String answer;
  final VoidCallback callback;

  AnswerButtonWidget({
    @required this.answer,
    @required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      child: FlatButton(
        onPressed: callback,
        color: Color(0xFF0C6493),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          answer,
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}