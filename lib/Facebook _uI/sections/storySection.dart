import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Widgets/Storycard.dart';
class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
           StoryCard(labeltext: 'dulquar', story: dulquar, createStoryStatus: true,avathar22: ""),
          StoryCard(labeltext: 'mohanlal', story:mohanlal , avathar22: dul),
          StoryCard(labeltext: 'mohanlal', story:mohanlal2 , avathar22: dul2),
          StoryCard(labeltext: 'mamooty', story:mamooty , avathar22: fahad),
          StoryCard(labeltext: 'mohanlal', story:mammooty1 , avathar22: jaysurya),
          StoryCard(labeltext: 'mohanlal', story:mohanlal , avathar22: dul),
          StoryCard(labeltext: 'mohanlal', story:mohanlal2 , avathar22: dul2),
          StoryCard(labeltext: 'mamooty', story:mamooty , avathar22: fahad),
          StoryCard(labeltext: 'mohanlal', story:mammooty1 , avathar22: jaysurya),
        ],
      ),
    );
  }
}
