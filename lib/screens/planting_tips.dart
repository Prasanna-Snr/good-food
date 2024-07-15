import 'package:flutter/material.dart';

class PlantingTips extends StatefulWidget {
  const PlantingTips({super.key});

  @override
  State<PlantingTips> createState() => _PlantingTipsState();
}

class _PlantingTipsState extends State<PlantingTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Planting Tips",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
        ),
      ),
    );
  }
}
