import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextStyle extends StatelessWidget {

   String text;
  Color color;
  double? fontSize;
  FontWeight? fontWeight;
 
   CustomTextStyle({
    super.key,
    required this.text,
    required this.color,
    this.fontSize,
    this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),);
  }
}