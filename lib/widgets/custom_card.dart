import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/track/track_cubit.dart';
import '../workout/exercises.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrackCubit, TrackState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            TrackCubit.get(context).chickCardState(index);
            TrackCubit.get(context).cardOnTap(index);
          },
          child: Card(
              color: selectedCards[index] == true
                  ?const Color(0xff70A9A1)
                  : primaryColor,
              child: ListTile(
                trailing: Visibility(visible:selectedCards[index] ,child: const Icon(Icons.done,color:darkPrimaryColor,size: 35,)),
                title: Text(
                  exercisesNames[index],
                  style:
                      const TextStyle(color: darkPrimaryColor, fontSize: 20),
                ),
                subtitle: Text(
                  core[index],
                  style: const TextStyle(
                      fontSize: 16, color: Color(0xff40798C)),
                ),
                leading: (Image(
                  image: AssetImage('assets/${exercisesNames[index]}.jpg'),
                )),
              )),
        );
      },
    );
  }
}
