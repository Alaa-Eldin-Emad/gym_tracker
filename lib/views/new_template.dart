import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/cubit/display/display_templates_cubit.dart';
import 'package:gym_tracker/models/exercise_model.dart';
import 'package:gym_tracker/widgets/new_template_view_body.dart';
import 'package:gym_tracker/widgets/show_toast.dart';
import 'package:gym_tracker/workout/exercises.dart';
import 'package:intl/intl.dart';
import '../cubit/track/track_cubit.dart';
import '../widgets/custom_alert_dialog.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/modal_progress_hud.dart';

class NewTemplate extends StatelessWidget {
  const NewTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackCubit, TrackState>(
      listener: (context, state) {
        if(state is SavingDataFailure){
          showToast('Failure. Save the template again.');
        }
        if(state is SavingDataSuccess){
          DisplayTemplatesCubit.get(context).displayingData();
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHud(
          state: state,
    child:
        Scaffold(
          backgroundColor: primaryColor,
          body: Form(
            key: TrackCubit.get(context).textFormKey,
            child: Column(
              children: [
                CustomAppBar(
                  
                  iconOnPressed: () {
                    TrackCubit.get(context).textFormKey.currentState!.save();
                    var formatedDate=DateFormat.yMd().format(DateTime.now());
                     TrackCubit.get(context).savingData(ExerciseModel(TrackCubit.get(context).templateName??'New Template', TrackCubit.get(context).templateNotes, formatedDate.toString(), Colors.blue.value, selectedExercisesNames, reps,restTime, selectedExercisesSets, weightList));
                    //selectedExercisesNames.clear();
                    },
                  icon: Icons.done,
                  text: 'New Template',
                  leadingIcon: Icons.close,
                  visible: true,
                  leadingIconOnPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => const CustomAlertDialog(),
                    );
                  },
                ),
                const NewTemplateBody(),
              ],
            ),
          ),
        ),
        );
      },
    );
  }
}

