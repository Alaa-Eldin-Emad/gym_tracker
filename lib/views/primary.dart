import 'package:flutter/material.dart';
import 'package:gym_tracker/widgets/app_view_body.dart';
import 'package:gym_tracker/widgets/custom_app_bar.dart';
import 'package:gym_tracker/workout/exercises.dart';

import 'new_template.dart';

class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: primaryColor,
      body: Column(
        children: [
          CustomAppBar(iconColor: primaryColor,
            iconOnPressed: () {
                           Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const NewTemplate(),
                                        ),
                                      );},
            icon: Icons.add,
            iconSize: 30,
            text: 'Track Your Workout',
            visible: false,
          ),
          const AppViewBody(),
        ],
      ),
    );
  }
}
