import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Widgets/Circularbutton.dart';
import 'package:variousui/Widgets/avathar.dart';

class StoryCard extends StatelessWidget {
   final String labeltext;
  final String story;
  final String avathar22;
  final bool createStoryStatus;

  StoryCard({
    required this.labeltext,
    required this.story,
    required this.avathar22,
     this.createStoryStatus=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child:
                createStoryStatus?
            CircularButton(
              buttonIcon: Icons.add,
              buttonAction: () {
                print("my status " );
              },
              iconc: Colors.lightBlueAccent,
            ):Avatharr(displayImage: avathar22)
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labeltext!=null?labeltext:"Notavailable",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
