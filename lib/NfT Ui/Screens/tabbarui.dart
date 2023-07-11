import 'package:flutter/material.dart';
class MyTabbar extends StatelessWidget {
  final List taboptions;
  MyTabbar({required this.taboptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs:[
              Text(taboptions[0][0]),
              Text(taboptions[1][0]),
              Text(taboptions[2][0]),
            ]),
        Expanded(child: TabBarView(
          children: [
            taboptions[0][1],
            taboptions[1][1],
            taboptions[2][1],
          ],
        ))
      ],
    );
  }
}
