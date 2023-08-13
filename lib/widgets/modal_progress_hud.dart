import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../cubit/track/track_cubit.dart';

class ModalProgressHud extends StatelessWidget {
  const ModalProgressHud({super.key, required this.child, required this.state});
  final Widget child;
  final TrackState state;
  @override
  Widget build(BuildContext context) {
    return BlurryModalProgressHUD(
    inAsyncCall: state is SavingDataLoading? true: false,  
    blurEffectIntensity: 4,
    progressIndicator: SpinKitFadingCircle(
    color: Colors.blue.shade300,
    size: 90.0,
    ),
    dismissible: false,
    opacity: 0.4,
    child:child);
  }
}