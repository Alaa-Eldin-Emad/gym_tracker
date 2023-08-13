import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/widgets/template_button.dart';
import '../cubit/display/display_templates_cubit.dart';
import '../models/exercise_model.dart';

class AppViewBody extends StatelessWidget {
  const AppViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayTemplatesCubit, DisplayTemplatesState>(
      builder: (context, state) {
        DisplayTemplatesCubit.get(context).displayingData();
        List<ExerciseModel> display =
            DisplayTemplatesCubit.get(context).display!;
        return Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: display.length,
              itemBuilder: (context, index) {
                return TemplateButton(index: index,
                  model: display[index],
                );
              }),
        );
      },
    );
  }
}
