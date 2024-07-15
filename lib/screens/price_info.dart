import 'package:flutter/material.dart';

class PriceInfo extends StatefulWidget {
  const PriceInfo({super.key});

  @override
  State<PriceInfo> createState() => _PriceInfoState();
}

class _PriceInfoState extends State<PriceInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Price Info",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
