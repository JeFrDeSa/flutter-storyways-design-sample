// coverage:ignore-file
import 'package:flutter/material.dart';

const _defaultCustomColor = Color.fromARGB(0xff, 0x5c, 0x5e, 0xa6);
const _foregroundColorDarkTheme = Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2);
const _foregroundColorLightTheme = Colors.black;

/// The [ThemeData] configuration for a dark theme.
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _defaultCustomColor,
  dividerTheme: const DividerThemeData(thickness: 0.1, color: _foregroundColorDarkTheme),
);

/// The [ThemeData] configuration for a light theme.
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _defaultCustomColor,
  dividerTheme: const DividerThemeData(thickness: 0.1, color: _foregroundColorLightTheme),
);
