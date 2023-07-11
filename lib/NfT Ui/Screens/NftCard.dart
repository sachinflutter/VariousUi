import 'package:flutter/material.dart';
class NFTCard extends StatelessWidget {
  final String imagepath;
  NFTCard({
    required this.imagepath
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
          child: Image.asset(imagepath,fit: BoxFit.cover,),
      ),
    );
  }
}
