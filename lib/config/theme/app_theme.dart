import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.orange,
  Colors.red
];

class AppTheme{

  final int selectedColor;
  final bool isDarkMode;

  AppTheme(this.selectedColor, this.isDarkMode);

  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark: Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false
    )
  );
}