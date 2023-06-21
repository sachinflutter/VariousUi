import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CircularButton extends StatelessWidget {
final IconData buttonIcon;
final void Function() buttonAction;
final Color iconc;
CircularButton({required this.buttonIcon,required this.buttonAction,this.iconc=Colors.black});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(onPressed:buttonAction
      , icon: Icon(buttonIcon,color: iconc,size: 25)),
    );
  }
}
