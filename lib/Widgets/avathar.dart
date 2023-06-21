import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
class Avatharr extends StatelessWidget {
  final String displayImage;
  final double? maxrad;
 Avatharr({required this.displayImage,  this.maxrad});


  @override
  Widget build(BuildContext context) {
    return
      CircleAvatar(
        maxRadius: maxrad,
        backgroundImage: AssetImage(displayImage),
      );
  }
}
