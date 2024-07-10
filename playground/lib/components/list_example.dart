import 'package:flutter/material.dart';
import 'package:playground/components/square.dart';

// listView renders a static list of items
// the items are rendered in a column
// the items are rendered in a scrollable view
// ===========================================
// ListView.builder renders a dynamic list of items
// the items are rendered in a column
// the items are rendered in a scrollable view
// the itemBuilder is called for each item in the list
// the itemBuilder returns a widget for each item in the list
// the builder need to have the number of items in the list

class ListExample extends StatelessWidget {
  ListExample({super.key});

  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return Square(text: _items[index]);
      },
    );
  }
}
