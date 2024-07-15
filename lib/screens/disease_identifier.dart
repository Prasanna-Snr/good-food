import 'package:flutter/material.dart';

class DiseaseIdentifier extends StatefulWidget {
  const DiseaseIdentifier({super.key});

  @override
  State<DiseaseIdentifier> createState() => _DiseaseIdentifierState();
}

class _DiseaseIdentifierState extends State<DiseaseIdentifier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Disease Identifier",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
        ),
      ),
    );
  }
}
