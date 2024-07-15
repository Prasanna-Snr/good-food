import 'package:flutter/material.dart';
class UserInputField extends StatefulWidget {
  String? label;
  String? hintTxt;
  Icon? prefixIcon;
  IconButton? suffixIcon;
  TextEditingController controller;
  bool? hide;

  UserInputField({
    this.label,
    this.hintTxt,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.hide=false
});

  @override
  State<UserInputField> createState() => _UserInputFieldState();
}

class _UserInputFieldState extends State<UserInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.hide ?? false,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hintTxt,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50)
        ),

        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.greenAccent
          )
        ),

        fillColor: Colors.white70,
        filled: true
      ),
    );
  }
}
