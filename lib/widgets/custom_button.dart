import 'package:flutter/material.dart';
import 'package:gym_tracker/workout/exercises.dart';

class CustomButton extends StatelessWidget {
const CustomButton({super.key, this.onTap,required this.text, this.iconVisibility, this.width, this.color});
final VoidCallback? onTap;
final String text;
final bool? iconVisibility;
final double? width;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Container(height: 40,width:width ,
          decoration: BoxDecoration(color: color??darkPrimaryColor,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(visible:iconVisibility??true ,child: const Icon(Icons.add_box_rounded,size: 30,color: primaryColor, )),
                const SizedBox(width: 15,),
                Text(text,style: const TextStyle(color: primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),),
      ));
                                          
  }
}