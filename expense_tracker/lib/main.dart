import 'package:expense_tracker/screens/expenses/expenses_screen.dart';
import 'package:expense_tracker/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) // locking the app in portrait mode
  // .then((fn) => {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(), // ThemeData().light()
      theme: defaultTheme, // this is how you override flutter styles
      darkTheme: darkTheme,
      themeMode: ThemeMode
          .dark, // control whether it should be a light or dark theme and this is the default
      home: const ExpensesScreen(),
    ),
  );
  // });
}
