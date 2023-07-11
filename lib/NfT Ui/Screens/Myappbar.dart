import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyappBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;
  MyappBar({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(title,style:GoogleFonts.bebasNeue(fontSize: 54))),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade200,
              ),
              child: Icon(Icons.search,size: 36,),
            ),
          )
        ],
      ),
    );
  }
}
