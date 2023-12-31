import 'dart:ui';

import 'package:flutter/material.dart';

List<String> core = [
  'Back',
  'Leg',
  'Chest',
  'Back',
  'Biceps',
  'Shoulders',
  'Triceps',
  'Triceps',
  'Chest',
  'Biceps',
  'Leg',
  'Chest',
  'Chest',
  'Chest',
  'Biceps',
  'Chest',
  'Shoulders',
  'Shoulders',
  'Biceps',
  'Chest',
  'Leg',
  'Leg',
  'Biceps',
  'Triceps',
  'Biceps',
  'Chest',
  'Chest',
  'Chest',
  'Back',
  'Leg',
  'Leg',
  'Leg',
  'Leg',
  'Shoulders',
  'Back',
  'Shoulders',
  'Shoulders',
  'Back',
  'Biceps',
  'Triceps',
  'Triceps',
  'Triceps',
  'Chest',
  'Chest',
  'Back',
  'Back',
  'Triceps',
  'Shoulders',
  'Back',
  'Leg',
  'Shoulders',
  'Shoulders',
  'Triceps',
  'Back',
  'Shoulders',
  'Biceps',
  'Chest',
  'Shoulders',
  'Biceps',
  'Chest',
  'Leg',
  'Back',
  'Triceps',
  'Back',
  'Shoulders',
  'Back'
];
List<String> exercisesNames = [
  'Back extention',
  'Barbell Back Squat',
  'Barbell Bench Press',
  'Bent Over Row',
  'Cable Curl',
  'Cable Face Pull',
  'Cable Tricep Extension With V-Bar',
  'Cable Tricep Kickback',
  'Chest Dip',
  'Concentration Curl',
  'Deadlift',
  'Decline Bench Press',
  'Decline Dumbbell Bench Press',
  'Dumbbell Bench Press',
  'Dumbbell Curl',
  'Dumbbell Fly',
  'Dumbbell Front Raise',
  'Dumbbell Lateral Raise',
  'Dumbbell Preacher Curl',
  'Dumbbell Pullover',
  'Dumbbell Lunge',
  'Dumbbell Squat',
  'EZ Bar Preacher Curl',
  'Skullcrusher',
  'Hammer Curl',
  'Incline Bench Press',
  'Incline Dumbbell Bench Press',
  'Incline Dumbbell Flys',
  'Lat Pull Down',
  'Leg Curl',
  'Leg Extension',
  'Leg Press',
  'Machine Hack Squat',
  'Machine Reverse Fly',
  'Machine Row',
  'Machine Shoulder Press',
  'Military Press',
  'One Arm Dumbbell Row',
  'One-Arm Cable Curl',
  'One-Arm Cable Tricep Extension',
  'One-Arm Dumbbell Extension',
  'Overhead Tricep Rope Extension',
  'Pec Dec',
  'Push Up',
  'Reverse Grip Bent Over Row',
  'Reverse Grip Lat Pull Down',
  'Rope Tricep Extension',
  'Seated Arnold Press',
  'Seated Cable Row',
  'Seated Calf Raise',
  'Seated Dumbbell Lateral Raise',
  'Seated Dumbbell Press',
  'Seated Dumbbell Tricep Extension',
  'Shrug',
  'Single Arm Cable Lateral Raise',
  'Standing Barbell Curl',
  'Standing Cable Fly',
  'Standing Cable Reverse Fly',
  'Standing High Pulley Cable Curl',
  'Standing Low to High Cable Fly',
  'Standing Machine Calf Raise',
  'Straight Arm Lat Pull Down',
  'Straight Bar Tricep Extension',
  'T-Bar Row',
  'Upright Row',
  'V-Bar Pull Down'
];
List<String> selectedExercisesNames = [];
List<int> selectedExercisesSets = [
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1
];
List<bool> selectedCards = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
List isTheSetDone = [
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],
  [false,false,false],  
  [false,false,false],
  [false,false,false],
];

 List<List<double>> weightList = [
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
  [0,0,0],
];
List<List<String>> restTime = [
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
  ['Time','Time','Time'],
];
List<List<int>> reps = [
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1],
];

const dataBox ='data_box';
List<int> colors =[
0xffCFD7C7,
0xff70A9A1,
0xff40798C,
0xff0B2027
];
const Color primaryColor =Color(0xffF6F1D1);
const darkPrimaryColor =  Color.fromARGB(255, 1, 45, 57);