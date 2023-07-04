import 'package:flutter/material.dart';

class lastPostCard extends StatelessWidget {
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
        Expanded(
          flex: 1,
          child: Container(
              width: 100,
              height: 40,
              child: headerButton(
                  buttontext: "Like",
                  buttonAction: () {
                    print("Like this post");
                  },
                  color: Colors.grey,
                  buttonIcon: Icons.thumb_up_alt_outlined)),
        ),
        Expanded(
          flex: 1,
          child: Container(
              width: 100,
              height: 40,
              child: headerButton(
                  buttontext: "Comment",
                  buttonAction: () {
                    print("Comments started");
                  },
                  color: Colors.grey,
                  buttonIcon: Icons.message_outlined)),
        ),
        Expanded(
          flex: 1,
          child: Container(
              width: 300,
              height: 40,
              child: headerButton(
                  buttontext: "Share",
                  buttonAction: () {
                    print("Share post");
                  },
                  color: Colors.grey,
                  buttonIcon: Icons.share_outlined)),
        ),
      ],
    );
  }
}
