import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:expense_tracker/domain/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.removeExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          removeExpense(expenses[index]);
        },
        child: ExpenseItem(expense: expenses[index]),
      ),
    );
  }
}
