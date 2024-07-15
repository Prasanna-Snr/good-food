import 'package:flutter/material.dart';

class CustomBtn extends StatefulWidget {
  String txtName;
  VoidCallback? onPressed;
  Color? bgColor;
  Color? txtColor;


  CustomBtn({
    required this.txtName,
    required this.onPressed,
    required this.bgColor,
    required this.txtColor

  });

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.bgColor
      ),
      onPressed: widget.onPressed,
      child: Text(widget.txtName,
      style: TextStyle(
        color: widget.txtColor
      ),),
    );
  }
}
