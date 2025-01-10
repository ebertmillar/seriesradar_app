import 'package:flutter/material.dart';

class AppTheme {

  static const Color scaffoldBackgroundColor = Color.fromARGB(166, 20, 3, 39);

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorScheme:  const ColorScheme.light(),
    scaffoldBackgroundColor: scaffoldBackgroundColor, 
  );


  ThemeData getDynamicTheme(BuildContext context) {
    final ColorScheme dynamicColors = Theme.of(context).colorScheme;
    return ThemeData(
      useMaterial3: true,
      colorScheme: dynamicColors,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
    );
  }

  ThemeData getLightTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.yellow,
      ),
    );

ThemeData getDarkTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: Color.fromARGB(255, 3, 54, 124),
        secondary: Colors.amber,
      ),
      scaffoldBackgroundColor: scaffoldBackgroundColor,
    );
}