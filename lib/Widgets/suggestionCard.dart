import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';

class SuggestionCard extends StatelessWidget {

  late final String avathar;
  late final String name;
  late final String mutalfriends;
  SuggestionCard({required this.avathar,required this.name,required this.mutalfriends,});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestiondetails(),
        ],
      ),
    );
  }

  Widget blankButton(
      {required void Function() buttonaction,
      required String buttontext,
      required Color buttoncolor,
      required Color buttontextcolor}) {
    return ElevatedButton(
        onPressed: buttonaction,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttoncolor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)))),
        child: Text(
          buttontext,
          style: TextStyle(color: buttontextcolor),
        ));
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttontext,
  }) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))))),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttontext,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggestiondetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)),
              color: Colors.grey[300],
              border: Border.all(color: Colors.white24, width: 1)),
          height: 140,
          child: Column(
            children: [
              ListTile(
                title: Text(name),
                subtitle: Text(mutalfriends),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: () {
                          print("button clicked");
                        },
                        buttonIcon: Icons.add_moderator,
                        buttonColor: Colors.blue,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttontext: "Add Friend"),
                    blankButton(
                        buttonaction: () {
                          print("remocesuggestion clicked");
                        },
                        buttontext: "Remove",
                        buttoncolor: Colors.grey,
                        buttontextcolor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          avathar,
          height: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
