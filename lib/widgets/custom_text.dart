import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text, this.color, this.fontSize,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color??const Color(0xff40798C),fontSize: fontSize?? 20,fontWeight: FontWeight.bold),);
  }
}