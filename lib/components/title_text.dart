import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  String txtName;
  Color txtColor;
  int txtSize;

  TitleText({
    required this.txtName,
    required this.txtSize,
    required this.txtColor
});

  @override
  Widget build(BuildContext context) {
    return Text(txtName,
    style: TextStyle(
      color: txtColor,
      fontSize: txtSize.toDouble(),
      fontWeight: FontWeight.w600
    ),);
  }
}
