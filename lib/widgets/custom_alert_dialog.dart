import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../workout/exercises.dart';
import 'custom_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,  this.text, this.onTap, this.textt,
  });
  final String? text;
  final String? textt;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title:  Text('${text?? 'Discard'} ${textt?? 'Template'}'),
      content:  Text('Are you sure you want to ${text?? 'Discard'} ${textt??'this template?'} All progress will be lost'),
      actions: [
        CupertinoDialogAction(
            child: Row(
          children: [
            CustomButton(
              text: 'Do Nothing',
              onTap: () {
                Navigator.pop(context);
              },
              iconVisibility: false,
              width: 180,
            ),
            const Spacer(),
            CustomButton(
              text: text?? 'Discard',
              onTap:onTap?? () {
                Navigator.pop(context);
                Navigator.pop(context);
                selectedExercisesNames.clear();
                selectedCards.fillRange(0, selectedCards.length-1,false);
              },
              iconVisibility: false,
              width: 180,
              color: Colors.red.shade700,
            )
          ],
        ))
      ],
    );
  }
}
