import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Widgets/suggestionCard.dart';
class Suggestionsection extends StatelessWidget {
  const Suggestionsection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column
        (
        children: [
          ListTile(
            title: Text("People you May Know"),
            trailing: IconButton(onPressed: () {
              print("more clicked");
            }, icon: Icon(Icons.more_horiz),color: Colors.grey[700],),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(avathar: dul2, name: "Dulquar", mutalfriends: '1 mutual friend',),
                SuggestionCard(avathar: mammooty1, name: "mamooty", mutalfriends: "40 mutual friends"),
                SuggestionCard(avathar: mohanlal2, name: "mohanlal", mutalfriends: "20 mutual friends"),
                SuggestionCard(avathar: fahad, name: "Fahad", mutalfriends: "10 mutual friends"),
                SuggestionCard(avathar: jaysurya, name: "Jayasurya", mutalfriends: "12 mutual friends"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
