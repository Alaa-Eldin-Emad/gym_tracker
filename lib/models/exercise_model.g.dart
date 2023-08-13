// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExerciseModelAdapter extends TypeAdapter<ExerciseModel> {
  @override
  final int typeId = 0;

  @override
  ExerciseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExerciseModel(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String,
      fields[3] as int,
      (fields[4] as List).cast<String>(),
      (fields[7] as List).cast<List<int>>(),
      (fields[8] as List).cast<List<String>>(),
      (fields[5] as List).cast<int>(),
      (fields[6] as List).cast<List<double>>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExerciseModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.templateName)
      ..writeByte(1)
      ..write(obj.templateNotes)
      ..writeByte(2)
      ..write(obj.templateDate)
      ..writeByte(3)
      ..write(obj.templateColor)
      ..writeByte(4)
      ..write(obj.exerciseName)
      ..writeByte(5)
      ..write(obj.sets)
      ..writeByte(6)
      ..write(obj.weight)
      ..writeByte(7)
      ..write(obj.reps)
      ..writeByte(8)
      ..write(obj.restTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExerciseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
