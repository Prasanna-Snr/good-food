import 'package:flutter/cupertino.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Help",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
      ),
    );
  }
}
