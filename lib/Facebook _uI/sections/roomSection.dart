import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Widgets/statusscircle.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          creteroombutton(),
          Avatharr1(displayImage: dulquar),
          Avatharr1(displayImage: sureshgopi),
          Avatharr1(displayImage: mohanlal2),
          Avatharr1(displayImage: mohanlal),
          Avatharr1(displayImage: jaysurya),
          Avatharr1(displayImage: fahad),
          Avatharr1(displayImage: dulquar),
          Avatharr1(displayImage: dulquar),
          Avatharr1(displayImage: sureshgopi),
          Avatharr1(displayImage: mohanlal2),
          Avatharr1(displayImage: mohanlal),
          Avatharr1(displayImage: jaysurya),
          Avatharr1(displayImage: fahad),
          Avatharr1(displayImage: dulquar),
        ],
      ),
    );
  }
  Widget creteroombutton() {
    return OutlinedButton.icon(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          ),
          surfaceTintColor: MaterialStateProperty.all(Colors.blue[200]),
          side: MaterialStateProperty.all(
              BorderSide(color: Color.fromRGBO(182, 208, 226, 1)))),
      onPressed: () {
        print("Click the Create Room");
      },
      icon: Icon(Icons.video_call, color: Colors.purpleAccent),
      label: Text(
        "Create\n Room",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
