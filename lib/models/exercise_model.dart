import 'package:hive/hive.dart';
part 'exercise_model.g.dart';

@HiveType(typeId: 0)
class ExerciseModel extends HiveObject{
  @HiveField(0)
  String? templateName;
    @HiveField(1)
  String? templateNotes;
    @HiveField(2)
  String templateDate;
    @HiveField(3)
  int templateColor;
    @HiveField(4)
  List<String> exerciseName;
    @HiveField(5)
  List<int> sets =[];
    @HiveField(6)
  List<List<double>> weight = [];
    @HiveField(7)
  List<List<int>> reps = [];
    @HiveField(8)
  List<List<String>>restTime=[];
    @HiveField(9)
  ExerciseModel(this.templateName, this.templateNotes, this.templateDate, this.templateColor, this.exerciseName, this.reps, this.restTime,this.sets,this.weight);

}