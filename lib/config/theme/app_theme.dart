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

  AppTheme({this.selectedColor = 0, this.isDarkMode = false});

  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark: Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false
    )
  );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode
  }) => AppTheme(selectedColor: selectedColor ?? this.selectedColor,
                isDarkMode: isDarkMode ?? this.isDarkMode
      );
}

