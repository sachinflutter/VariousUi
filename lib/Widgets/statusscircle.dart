import 'package:flutter/material.dart';

class Avatharr1 extends StatelessWidget {
  final String displayImage;

  Avatharr1({required this.displayImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Stack(children: [
        CircleAvatar(
          backgroundImage: AssetImage(displayImage),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                border: Border.all(color: Colors.white, width: 1)),
            child: Icon(
              Icons.add,size: 10,
            ),
          ),
        )
      ]),
    );
  }
}
