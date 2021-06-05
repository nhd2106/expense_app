import '../models/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(title: 'shoe', id: 't1', amount: 69.99, date: DateTime.now()),
    Transaction(title: 'shoe2', id: 't2', amount: 39.99, date: DateTime.now())
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        id: DateTime.now().toString(),
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
