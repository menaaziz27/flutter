import 'package:flutter/material.dart';
import 'package:playground/components/container_example.dart';
import 'package:playground/components/expanded_example.dart';
import 'package:playground/components/list_example.dart';
import 'package:playground/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: CustomTheme.defaultTheme(context),
      // darkTheme: CustomTheme.darkTheme(context),
      home: const MyHomePage(title: 'Password Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showModalOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return Container(
            // height: 200,
            width: double.infinity,
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.cancel),
                    ),
                  ],
                ),
                const Text('This is a modal overlay'),
              ],
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: ListExample(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _showModalOverlay,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        // change the position of the button
      ),
    );
  }
}
