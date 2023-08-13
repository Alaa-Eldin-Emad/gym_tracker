import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, required this.fontSize,  this.onSaved});
  final String hintText;
  final double fontSize;
  final void Function(String?)? onSaved; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
      child: TextFormField(style: TextStyle(fontSize: fontSize,color: const Color(0xff40798C),fontWeight: FontWeight.bold),
        onSaved:onSaved ,
        decoration: InputDecoration(contentPadding: EdgeInsets.zero,border: InputBorder.none ,hintText:hintText,hintStyle: TextStyle(fontSize: fontSize) ),
        
      ),
    );
  }
}