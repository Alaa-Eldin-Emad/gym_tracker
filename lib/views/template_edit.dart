import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/widgets/custom_alert_dialog.dart';
import 'package:gym_tracker/workout/exercises.dart';
import '../cubit/display/display_templates_cubit.dart';
import '../cubit/track/track_cubit.dart';
import '../models/exercise_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/selected_exersice_view.dart';
import '../widgets/custom_pop_up_surface.dart';
import '../widgets/custom_text_field.dart';

class EditTemplete extends StatelessWidget {
  const EditTemplete({super.key,required this.model});
  final ExerciseModel model;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayTemplatesCubit, DisplayTemplatesState>(
      builder: (context, state) {
        DisplayTemplatesCubit.get(context).displayingData();
        //List<ExerciseModel> display= DisplayTemplatesCubit.get(context).display!;
        return Scaffold(
          backgroundColor: primaryColor,
              body: Form(
                key: TrackCubit.get(context).textFormKey,
                child: Column(
                  children: [
                    CustomAppBar(
                      iconOnPressed: () {
                        },
                      icon: Icons.done,
                      text: "Template View",
                      leadingIcon: Icons.close,
                      visible: true,
                      leadingIconOnPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) => const CustomAlertDialog(textt: 'Edits',),
                        );
                      },
                    ),
                     CustomTextField(
                      onSaved: (value){
                      TrackCubit.get(context).templateName=value;
                     },
                      hintText: model.templateName??'Template Name',
                      fontSize: 28,
                    ),
                     CustomTextField(
                      onSaved: (value){
                        TrackCubit.get(context).templateNotes=value;
                      },
                      hintText: '${model.templateNotes==''?'Notes':model.templateNotes}',
                      fontSize: 16,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Expanded(
                      child: ListView.separated(
                          padding: const EdgeInsets.only(bottom: 5),
                          itemCount: model.exerciseName.length,
                          separatorBuilder: (context, index) => Divider(
                                height: 0,
                                color: Colors.white.withOpacity(0.2),
                              ),
                          itemBuilder: (context, index) {
                            return SelectedExerciseView(index:index, itemCount: model.sets[index],exerciseName:model.exerciseName[index],weightHintText: model.weight[index][model.sets[index]-1].toString(),);
                          }),
                    ),
                    CustomButton(
                      text: 'Add Exercies',
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext builder) {
                              return BlocConsumer<TrackCubit, TrackState>(
                                listener: (context, state) {},
                                builder: (context, state) {
                                  return const CustomPopUpSurface();
                                },
                              );
                            });
                      },
                    )
                  ],
                ),
              ),
            );
      },
    );
  }
}