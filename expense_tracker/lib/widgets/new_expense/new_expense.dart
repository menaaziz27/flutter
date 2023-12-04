import 'package:expense_tracker/domain/models/expense.dart';
import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.addExpense});

  final void Function(Expense expense) addExpense;

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // var enteredInput = '';

  // void _onChange(String userInput) {
  //   enteredInput = userInput; // since we don't use the entered input in the UI we don't need to use setState to update the UI
  // }
  final _textController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? selectedDate;
  Category _selectedCategory = Category.leisure;

  @override
  void dispose() {
    _textController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.month);
    final pickedDate = await showDatePicker(
        context: context, firstDate: firstDate, lastDate: now);
    setState(() {
      selectedDate = pickedDate;
    });
  }

  void _onFormSubmit() {
    final enteredAmount = double.tryParse(_amountController.text);
    final enteredAmountIsInvalid = enteredAmount == null || enteredAmount <= 0;

    if (_textController.text.trim().isEmpty ||
        enteredAmountIsInvalid ||
        selectedDate == null) {
      // show error message
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: const Text('Invalid Input'),
                content: const Text(
                    'please make sure a valid title, amount, date and category was entered.'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(ctx);
                      },
                      child: const Text('Okay'))
                ],
              ));

      return;
    }

    // add the expense to the registeredList
    widget.addExpense(
      Expense(
        title: _textController.text,
        amount: enteredAmount,
        date: selectedDate!,
        category: _selectedCategory,
      ),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Column(
        children: [
          TextField(
            controller: _textController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  maxLength: 12,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: '\$ ',
                    label: Text('Amount'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(selectedDate == null
                        ? 'No Selected Date'
                        : formatter.format(selectedDate!)),
                    IconButton(
                        onPressed: _presentDatePicker,
                        icon: const Icon(Icons.calendar_month))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              DropdownButton(
                  value: _selectedCategory,
                  items: Category.values
                      .map(
                        (category) => DropdownMenuItem(
                          value: category,
                          child: Text(
                            category.name.toUpperCase(),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value == null) return;
                    setState(() {
                      _selectedCategory = value;
                    });
                  }),
              const Spacer(),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                  onPressed: _onFormSubmit, child: const Text('Save Changes'))
            ],
          )
        ],
      ),
    );
  }
}
