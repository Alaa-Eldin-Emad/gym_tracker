import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/track/track_cubit.dart';
import '../workout/exercises.dart';
import 'custom_button.dart';
import 'selected_exersice_view.dart';
import 'custom_pop_up_surface.dart';
import 'custom_text_field.dart';

class NewTemplateBody extends StatelessWidget {
  const NewTemplateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrackCubit, TrackState>(
      builder: (context, state) {
        return Expanded(
          child: Column(
            children: [
              CustomTextField(
                onSaved: (value) {
                  if(value==""||value==null){
                    TrackCubit.get(context).templateName ='New Template';
                  }
                  else{
                  TrackCubit.get(context).templateName = value;
                  }
                },
                hintText: 'Template Name',
                fontSize: 28,
              ),
              CustomTextField(
                onSaved: (value) {
                  TrackCubit.get(context).templateNotes = value;
                },
                hintText: 'Notes',
                fontSize: 16,
              ),
              const SizedBox(
                height: 26,
              ),
              Expanded(
                child: ListView.separated(
                    padding: const EdgeInsets.only(bottom: 5),
                    itemCount: selectedExercisesNames.length,
                    separatorBuilder: (context, index) => Divider(
                          height: 0,
                          color: darkPrimaryColor.withOpacity(0.7),
                        ),
                    itemBuilder: (context, index) {
                      return SelectedExerciseView(
                        index: index,
                        itemCount: selectedExercisesSets[index],
                        exerciseName: selectedExercisesNames[index],
                        weightHintText: 'KG',
                      );
                    }),
              ),
              CustomButton(
                text: 'Add Exercies',
                onTap: () {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext builder) {
                        return const CustomPopUpSurface();
                      });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
