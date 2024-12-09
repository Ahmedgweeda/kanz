import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final Color color;
  final  onTap;
  double? fontSize;

   Custombutton({
    required this.text,
    required this.color,
    required this.onTap,
    this.fontSize



});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

          width: MediaQuery.of(context).size.width,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Text(
            text,
            style:TextStyle(
                color: Colors.white,
              fontSize:fontSize ?? 20
            ),
          )),
    );
  }
}
