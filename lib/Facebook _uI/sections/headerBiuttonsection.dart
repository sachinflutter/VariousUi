import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton(
      {required String buttontext,
      required void Function() buttonAction,
      required Color color,
      required IconData buttonIcon}) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: buttonAction,
      child: Row(
        children: [
          Icon(
            buttonIcon,
            color: color,
          ),
          Text(
            buttontext,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: 200,
            height: 40,
            child: headerButton(
                buttontext: "Live",
                buttonAction: () {
                  print("Live Started");
                },
                color: Colors.red,
                buttonIcon: Icons.video_call)),
        Container(
            padding: EdgeInsets.all(5),
            width: 200,
            height: 40,
            child: headerButton(
                buttontext: "Photo",
                buttonAction: () {
                  print("Photos Clicked");
                },
                color: Colors.green,
                buttonIcon: Icons.photo_sharp)),
        Container(
            width: 200,
            height: 40,
            child: headerButton(
                buttontext: "Room",
                buttonAction: () {
                  print("Room selected");
                },
                color: Colors.indigo,
                buttonIcon: Icons.video_call)),
      ],
    );
  }
}
