// coverage:ignore-file
import 'package:flutter/material.dart';

const _defaultCustomColor = Color.fromARGB(0xff, 0x5c, 0x5e, 0xa6);

/// The [ThemeData] configuration for a dark theme.
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _defaultCustomColor,
);

/// The [ThemeData] configuration for a light theme.
final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _defaultCustomColor,
);