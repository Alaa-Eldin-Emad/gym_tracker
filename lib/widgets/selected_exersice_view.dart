import 'package:flutter/material.dart';
import 'package:gym_tracker/widgets/custom_button.dart';
import 'package:gym_tracker/widgets/custom_icon.dart';
import 'package:gym_tracker/widgets/custom_numeric_icon.dart';
import 'package:gym_tracker/widgets/custom_rectangle_text_field.dart';
import '../cubit/track/track_cubit.dart';
import '../workout/exercises.dart';
import 'custom_text.dart';

class SelectedExerciseView extends StatelessWidget {
  const SelectedExerciseView(
      {super.key,
      required this.index,
      required this.itemCount,
      required this.exerciseName, required this.weightHintText});
  final int index;
  final int itemCount;
  final String exerciseName;
  final String weightHintText;
  @override
  Widget build(BuildContext context) {
    double customWidth = MediaQuery.of(context).size.width / 10;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: exerciseName,
              color: const Color(0xff70A9A1),
              fontSize: 24,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const CustomText(text: 'Set'),
                SizedBox(
                  width: customWidth,
                ),
                const CustomText(text: 'Weight'),
                SizedBox(
                  width: customWidth * 1.1,
                ),
                const CustomText(text: 'Reps'),
                SizedBox(
                  width: customWidth,
                ),
                const CustomText(text: 'Rest'),
              ],
            ),
            const SizedBox(height: 10,),
            ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: itemCount,
                itemBuilder: (context, indexx) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        CustomNumericIcon(
                            backgroundColor: darkPrimaryColor,
                            number: indexx + 1),
                        SizedBox(
                          width: customWidth*1.1,
                        ),
                        CustomRectangleTextField(
                            onSaved: (value) {
                              if(value!=""){
                              TrackCubit.get(context).setWeight(
                                  index, indexx, double.parse(value!));
                              }
                            },
                            hintText: weightHintText),
                        SizedBox(
                          width: customWidth*1.2,
                        ),
                        const CustomRectangleTextField(
                          hintText: '10',
                        ),
                        SizedBox(
                          width: customWidth / 1.4,
                        ),
                        const CustomRectangleTextField(
                          hintText: 'Time',
                        ),
                        SizedBox(
                          width: customWidth / 1.8,
                        ),
                        CustomIcon(iconColor: primaryColor,
                        height: 30,
                        width: 30,
                          icon: Icons.done,
                          iconOnPressed: () {
                            TrackCubit.get(context).setChicker(index, indexx);
                          },
                          backgroundColor: isTheSetDone[index][indexx]
                              ?const Color(0xff70A9A1)
                              : darkPrimaryColor,
                          
                        )
                      ],
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomButton(
                text: 'Add Set',
                onTap: () {
                  TrackCubit.get(context).addSets(index);                  // TrackCubit.get(context).addBool(index);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
