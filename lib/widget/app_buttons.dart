import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color textColor;
  final Color? backgroundColor;
  final Gradient? gradientColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double wSize;
  double hSize;
  bool? isIcon;
  AppButtons(
      {super.key,
      required this.textColor,
      this.backgroundColor,
      this.gradientColor,
      required this.borderColor,
      required this.text,
      required this.wSize,
      required this.hSize,
      this.isIcon=false,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wSize,
      height: hSize,
      child: Center(
        child:  isIcon==false?Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ):Icon(icon,color:textColor,),
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          gradient: gradientColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor, width: 1.0)),
    );
  }
}
