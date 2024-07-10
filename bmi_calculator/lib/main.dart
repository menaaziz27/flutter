// ignore_for_file: library_private_types_in_public_api

import 'package:bmi_calculator/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0D22),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0D22),
          centerTitle: true,
        ),
      ),
      // ThemeData(
      //   useMaterial3: false,
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: const Color(0xFF0A0D22),
      //     secondary: const Color(0xFFEB1555),
      //   ),
      //   textTheme: const TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white),
      //   ),
      //   appBarTheme: const AppBarTheme(
      //     color: Color(0xFF0A0D22),
      //     centerTitle: true,
      //   ),
      // ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/input': (context) => const InputPage(),
      },
    );
  }
}
