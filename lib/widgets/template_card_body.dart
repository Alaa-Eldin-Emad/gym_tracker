import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_tracker/cubit/display/display_templates_cubit.dart';
import 'package:gym_tracker/models/exercise_model.dart';
import 'package:gym_tracker/widgets/custom_alert_dialog.dart';
import 'package:gym_tracker/workout/exercises.dart';
import 'custom_delete_icon_button.dart';

class TemplateCard extends StatelessWidget {
  const TemplateCard({
    super.key,
    required this.model,
  });

  final ExerciseModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              model.templateName!,
              style: const TextStyle(
                  fontSize: 28,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            trailing: CustomDeleteButton(trashOnPressed: () {
              showCupertinoDialog(
                      context: context,
                      builder: (context) =>  CustomAlertDialog(text:'Delete',onTap: () {
                        model.delete();
                        DisplayTemplatesCubit.get(context).displayingData();
                        Navigator.pop(context);
                      },),
                    );
              
            }),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                model.templateNotes ?? 'Notes',
                style: TextStyle(
                    fontSize: 22, color: primaryColor.withOpacity(0.5)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24, bottom: 24),
          child: Text(
            model.templateDate,
            style:
                TextStyle(fontSize: 16, color: primaryColor.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
