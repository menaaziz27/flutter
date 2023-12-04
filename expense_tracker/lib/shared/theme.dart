import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

final defaultTheme = ThemeData().copyWith(
  useMaterial3: true,
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: kColorScheme.onPrimaryContainer,
      foregroundColor: kColorScheme.primaryContainer),
);
