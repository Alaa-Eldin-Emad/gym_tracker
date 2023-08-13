import 'package:flutter/cupertino.dart';
import 'package:gym_tracker/workout/exercises.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoSearchTextField(
        itemColor: darkPrimaryColor,
        backgroundColor: primaryColor,
        placeholderStyle:
            TextStyle(color: darkPrimaryColor));
  }
}