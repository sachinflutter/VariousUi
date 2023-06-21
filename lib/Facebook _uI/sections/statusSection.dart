import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Widgets/avathar.dart';
class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatharr(displayImage: dulquar,),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind",
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.black
          )
        ),
      ),
    );
  }
}
