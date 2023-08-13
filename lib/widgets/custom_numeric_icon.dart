import 'package:flutter/cupertino.dart';
import 'package:gym_tracker/workout/exercises.dart';

class CustomNumericIcon extends StatelessWidget {
  const CustomNumericIcon({super.key, required this.backgroundColor, this.numberColor, required this.number});
  final Color backgroundColor;
  final Color? numberColor;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(height: 30,width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: backgroundColor),
            child: Center(child: Text('$number',style: TextStyle(color: numberColor??primaryColor ,fontSize: 20,fontWeight: FontWeight.bold),))
          );
  }
}