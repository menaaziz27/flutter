import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NotesHomePage(),
    );
  }
}

class NotesHomePage extends StatefulWidget {
  const NotesHomePage({super.key});

  @override
  State<NotesHomePage> createState() => _NotesHomePageState();
}

class _NotesHomePageState extends State<NotesHomePage> {
  final List<String> notes = [
    'Note 1',
    'Note 2',
    'Note 3',
  ];

  void _addNote(String note) {
    setState(() {
      notes.add(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Notes'),
        titleTextStyle: TextStyle(
            color: Colors.yellow[800],
            fontSize: 24.0,
            fontWeight: FontWeight.bold),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        // titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: ListTile(
                title: Text(
                  notes[index],
                  style: TextStyle(
                      color: Colors.grey[800], fontStyle: FontStyle.italic),
                ),
                subtitle: Text(
                  'Note 1 description',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            );
          },
          itemCount: notes.length,
        ),
      ),
    );
  }
}
