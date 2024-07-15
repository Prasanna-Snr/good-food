import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContainer extends StatefulWidget {
  final IconData? icon;
  final String? txtName;
  final VoidCallback? onPressed;

   CardContainer({
    required this.icon,
     required this .txtName,
     required this.onPressed,

});

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(11)
        ),
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(widget.icon,
                size: 50,
                color: Colors.green,),


              const SizedBox(height: 7,),
              Text(widget.txtName.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
