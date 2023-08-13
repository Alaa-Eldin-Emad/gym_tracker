import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../models/exercise_model.dart';
import '../../workout/exercises.dart';
part 'display_templates_state.dart';

class DisplayTemplatesCubit extends Cubit<DisplayTemplatesState> {
  DisplayTemplatesCubit() : super(DisplayTemplatesInitial());
  static DisplayTemplatesCubit get(context) => BlocProvider.of(context); 
  List<ExerciseModel>? display ;

  displayingData() async {
  var box = Hive.box<ExerciseModel>(dataBox);
  display =box.values.toList();
  emit(DisplayTemplatesSuccses());
    }

}
