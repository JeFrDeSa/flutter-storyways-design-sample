// coverage:ignore-file
import 'package:flutter/material.dart';

const _defaultCustomColor = Color.fromARGB(0xff, 0x5c, 0x5e, 0xa6);
const _foregroundColorDarkTheme = Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2);
const _foregroundColorLightTheme = Colors.black;

TextTheme _defaultTextTheme(Color color) {
  return TextTheme(
    bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: color),
    bodyText2: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: _defaultCustomColor),
    button: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: _defaultCustomColor),
    subtitle1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
    subtitle2: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.grey),
  );
}

/// The [ThemeData] configuration for a dark theme.
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _defaultCustomColor,
  textTheme: _defaultTextTheme(_foregroundColorDarkTheme),
  dividerTheme: const DividerThemeData(thickness: 0.1, color: _foregroundColorDarkTheme),
);

/// The [ThemeData] configuration for a light theme.
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _defaultCustomColor,
  textTheme: _defaultTextTheme(_foregroundColorLightTheme),
  dividerTheme: const DividerThemeData(thickness: 0.1, color: _foregroundColorLightTheme),
);
