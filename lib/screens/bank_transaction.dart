import 'package:flutter/material.dart';

class BankTransaction extends StatefulWidget {
  const BankTransaction({super.key});

  @override
  State<BankTransaction> createState() => _BankTransactionState();
}

class _BankTransactionState extends State<BankTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Bank Transaction",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
