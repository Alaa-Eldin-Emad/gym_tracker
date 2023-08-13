import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/workout/exercises.dart';
import 'package:hive/hive.dart';
import '../../models/exercise_model.dart';
part 'track_state.dart';

class TrackCubit extends Cubit<TrackState> {
  TrackCubit() : super(TrackInitial());
  static TrackCubit get(context) => BlocProvider.of(context);
  String? templateName;
  String? templateNotes;
  String? exerciseName;
  List<String>? reps;
  List<String>? restTime;
  List<String>? weight;
  final GlobalKey<FormState> textFormKey = GlobalKey();
  savingData(ExerciseModel model) async {
    emit(SavingDataLoading());
    try {
      var box = Hive.box<ExerciseModel>(dataBox);
      emit(SavingDataSuccess());
      await box.add(model);
    } catch (e) {
      emit(SavingDataFailure(e.toString()));
    }
  }
  
  chickCardState(int index) {
    if (selectedExercisesNames.isEmpty || selectedCards[index] != true) {
      selectedExercisesNames.add(exercisesNames[index]);
    } else {
      selectedExercisesNames.remove(exercisesNames[index]);
    }
  }

  cardOnTap(int index) {
    selectedCards[index] = !selectedCards[index];
    emit(SelectedCardColor());
  }
  // addBool(int index) {
  //   isTheSetDone[index].Add(false);
  //   emit(addBoolToSet());
  // }
  addSets(int index) {
    selectedExercisesSets[index] += 1;
    emit(AddSets());
  }

  setChicker(int index1, index2) {
    isTheSetDone[index1][index2] = !isTheSetDone[index1][index2];
    emit(SetTheChicker());
  }

  setWeight(int index1, index2, double value) {
    weightList[index1][index2] = value;
  }
  
  }

