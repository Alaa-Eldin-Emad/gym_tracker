import 'package:flutter/material.dart';
import 'package:gym_tracker/workout/exercises.dart';

class CustomRectangleTextField extends StatelessWidget {
  const CustomRectangleTextField({super.key,  this.hintText, this.onSaved});
  final String? hintText;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 30,width: 55,
                child: Center(
                  child: TextFormField(style: const TextStyle(color: Color.fromARGB(255, 157, 209, 202),fontWeight: FontWeight.bold),onSaved:onSaved ,textAlign: TextAlign.center,keyboardType: TextInputType.number,cursorColor:primaryColor,decoration: InputDecoration(contentPadding: EdgeInsets.zero,hintText:hintText??'',hintStyle: const TextStyle(color: primaryColor),filled: true,fillColor: darkPrimaryColor,border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide:BorderSide.none))
                  ,),
                ),
              );
  }
}