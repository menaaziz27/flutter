import 'package:expense_tracker/screens/expenses/expenses_screen.dart';
import 'package:expense_tracker/shared/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData.dark(), // ThemeData().light()
      theme: defaultTheme, // this is how you override flutter styles
      darkTheme: darkTheme,
      // themeMode: ThemeMode.system, // control whether it should be a light or dark theme and this is the default
      home: const ExpensesScreen(),
    ),
  );
}
