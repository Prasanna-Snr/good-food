import 'package:flutter/material.dart';

class Treatment extends StatefulWidget {
  const Treatment({super.key});

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Treatment",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
