import 'package:flutter/material.dart';

class TextClick extends StatefulWidget {
  String text;
  Color txtColor;
  VoidCallback onPressed;

  TextClick({
    required this.text,
    required this.txtColor,
    required this.onPressed,
  });

  @override
  State<TextClick> createState() => _TextClickState();
}

class _TextClickState extends State<TextClick> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.txtColor,
        ),
      ),
      onTap: widget.onPressed,
    );
  }
}
