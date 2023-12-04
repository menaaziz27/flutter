import 'package:expense_tracker/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/screens/expenses/expenses_screen.dart';

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData.dark(), // ThemeData().light()
      theme: defaultTheme, // this is how you override flutter styles
      home: const ExpensesScreen(),
    ),
  );
}
