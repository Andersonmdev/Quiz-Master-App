import 'package:flutter/material.dart';
import 'package:quizmasterApp/models/theme_model.dart';

class ThemeWidget extends StatelessWidget {
  final ThemeModel theme;
  final void Function(ThemeModel) onClick;

  ThemeWidget({
    @required this.theme,
    @required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(theme),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF0C6493),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(theme.imageTheme),
            ),
          ),
          child: Center(
            child: Text(
              theme.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
