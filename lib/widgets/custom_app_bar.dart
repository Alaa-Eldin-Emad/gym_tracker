import 'package:flutter/material.dart';
import 'package:gym_tracker/widgets/custom_icon.dart';
import 'package:gym_tracker/workout/exercises.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {required this.iconOnPressed,
      required this.icon,
      required this.text,
      required this.visible,
      super.key,
      this.leadingIcon,
      this.leadingIconOnPressed, this.iconSize,this.iconColor,});
  final String text;
  final IconData icon;
  final IconData? leadingIcon;
  final VoidCallback iconOnPressed;
  final VoidCallback? leadingIconOnPressed;
  final double? iconSize;
  final bool visible;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 40, 16, 5),
      child: Row(
        children: [
          Visibility(
              visible: visible,
              child: CustomIcon(
                  backgroundColor: darkPrimaryColor,
                  icon: leadingIcon ?? Icons.home,
                  iconColor: iconColor??primaryColor,
                  iconOnPressed: leadingIconOnPressed ?? () {})),
          const Spacer(),
          Text(
            text,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: darkPrimaryColor),
          ),
          const Spacer(),
          CustomIcon(iconSize:iconSize ,
              backgroundColor: darkPrimaryColor,
              icon: icon,
              iconColor: iconColor??primaryColor,
              iconOnPressed: iconOnPressed)
        ],
      ),
    );
  }
}
