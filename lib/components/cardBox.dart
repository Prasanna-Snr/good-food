import 'package:flutter/material.dart';
import 'package:good_food/UiColors.dart';

class CardBox extends StatefulWidget {
  final VoidCallback? onPressed;
  final AssetImage image;

   CardBox({
    required this.onPressed,
    required this.image,
  });

  @override
  State<CardBox> createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Card(
        color: Colors.white,
        elevation: 11,
        child: InkWell(
          onTap: widget.onPressed,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Image(
              image: widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
