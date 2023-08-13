import 'package:flutter/material.dart';
import 'package:gym_tracker/workout/exercises.dart';

class CustomDeleteButton extends StatelessWidget {
  const CustomDeleteButton({
    super.key,
    required this.trashOnPressed,
  });

  final VoidCallback trashOnPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        icon: const Icon(
          Icons.delete,
          size: 35,
          color: primaryColor,
        ),
        onPressed: trashOnPressed);
  }
}
