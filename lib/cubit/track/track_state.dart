part of 'track_cubit.dart';

abstract class TrackState {}

class TrackInitial extends TrackState {}
class SelectedCardColor extends TrackState {}
class AddSets extends TrackState {}
class SetTheChicker extends TrackState {}
class SetTheWeight extends TrackState {}
class SavingDataInitial extends TrackState {}
class SavingDataLoading extends TrackState {}
class SavingDataSuccess extends TrackState {}
class SavingDataFailure extends TrackState {
  final String msg;

  SavingDataFailure(this.msg);
}
class addBoolToSet extends TrackState {}