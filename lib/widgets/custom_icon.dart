import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.iconOnPressed, required this.backgroundColor,this.iconColor, this.iconSize, this.width, this.height});
  final IconData icon;
  final VoidCallback iconOnPressed;
  final Color backgroundColor;
  final Color? iconColor;
  final double? iconSize;
  final double? width,height;
  @override
  Widget build(BuildContext context) {
    return 
          Container(
            width:width??40 ,height:height??40 ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: backgroundColor),
            child: Center(
              child: IconButton(padding: EdgeInsets.zero,
                  icon: Icon(
                    icon,
                    size: iconSize?? 26,
                    color:iconColor ,
                  ),
                  onPressed: iconOnPressed),
            ),
          );
  }
}