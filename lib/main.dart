import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/cubit/bloc_observer.dart';
import 'package:gym_tracker/views/primary.dart';
import 'package:gym_tracker/workout/exercises.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'cubit/display/display_templates_cubit.dart';
import 'cubit/track/track_cubit.dart';
import 'models/exercise_model.dart';

void main() async {
  Bloc.observer = Observer();
  await Hive.initFlutter();
  Hive.registerAdapter(ExerciseModelAdapter());
  await Hive.openBox<ExerciseModel>(dataBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => TrackCubit()),
      BlocProvider(create: (context) => DisplayTemplatesCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const PrimaryScreen(),
      ),
    );
  }
}
