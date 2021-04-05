import 'package:cart_app/Models/transaction.dart';
import 'package:cart_app/Widgets/new_transaction.dart';
import 'package:cart_app/Widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transcion> _userTransaction = [
    Transcion(
        id: 't1', title: 'New Shows', amount: 69.99, date: DateTime.now()),
    Transcion(
        id: 't2', title: 'Video Games', amount: 99.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transcion(
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        title: txTitle);
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransationList(_userTransaction)
      ],
    );
  }
}
