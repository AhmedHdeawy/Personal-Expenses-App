import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  // list of transactions
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shirt',
      price: 46.45,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Shoes',
      price: 76.5,
      date: DateTime.now(),
    ),
  ];

  /**
   * Add New Transaction to a list
   */
  void _addNewTransaction(String txTitle, double txPrice) {
    final newTX = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        price: txPrice,
        date: DateTime.now());

    // Update List
    setState(() {
      _userTransactions.add(newTX);
    });

    print(_userTransactions);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
