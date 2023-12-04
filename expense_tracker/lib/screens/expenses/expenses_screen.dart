import 'package:expense_tracker/widgets/new_expense/new_expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/domain/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expense> _registerdExpenses = [
    Expense(
      title: 'flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Burger',
      amount: 9.99,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  void _onAddExpense(Expense expense) {
    setState(() {
      _registerdExpenses.add(expense);
    });
  }

  void _onRemoveExpense(Expense expense) {
    final expenseIndex = _registerdExpenses.indexOf(expense);

    setState(() {
      _registerdExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Expense deleted'),
        duration: const Duration(
          seconds: 3,
        ),
        action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _registerdExpenses.insert(expenseIndex, expense);
              });
            }),
      ),
    );
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        isScrollControlled: true, // takes all available height
        context: context,
        builder: (ctx) => NewExpense(
              addExpense: _onAddExpense,
            ));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text('No expenses yet, try adding some.'),
    );

    if (_registerdExpenses.isNotEmpty) {
      content = ExpensesList(
          expenses: _registerdExpenses, removeExpense: _onRemoveExpense);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('This is a chart'),
          Expanded(
            child: content,
          ),
        ],
      ),
    );
  }
}
