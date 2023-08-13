import 'package:flutter/material.dart';
import 'package:gym_tracker/models/exercise_model.dart';
import 'package:gym_tracker/views/template_edit.dart';
import 'package:gym_tracker/widgets/template_card_body.dart';

import '../workout/exercises.dart';

class TemplateButton extends StatelessWidget {
  const TemplateButton(
      {
      super.key,
required this.model, required this.index});
  final ExerciseModel model;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditTemplete(
              model: model,
            ),
          ),
        );
      },
      child: Card(
        elevation: 10,
        color: Color(colors[index>=4?index-4:index]),
        child: TemplateCard(model: model),
      ),
    );
  }
}

