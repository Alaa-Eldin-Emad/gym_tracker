import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_tracker/widgets/custom_card.dart';
import 'package:gym_tracker/widgets/custom_icon.dart';

import '../workout/exercises.dart';
import 'custom_search.dart';

class CustomPopUpSurface extends StatelessWidget {
  const CustomPopUpSurface({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 220),
      child: CupertinoPopupSurface(
        isSurfacePainted: true,
        child: Container(
          color: darkPrimaryColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const Expanded(
                      child: CustomSearch(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CustomIcon(
                        iconColor: darkPrimaryColor,
                        backgroundColor: primaryColor,
                        icon: Icons.done,
                        iconSize: 30,
                        iconOnPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 5),
                    itemCount: exercisesNames.length,
                    itemBuilder: (context, index) {
                      return CustomCard(index: index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


