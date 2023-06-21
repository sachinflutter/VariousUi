import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Facebook%20_uI/sections/Suggestionsection.dart';
import 'package:variousui/Facebook%20_uI/sections/headerBiuttonsection.dart';
import 'package:variousui/Facebook%20_uI/sections/roomSection.dart';
import 'package:variousui/Facebook%20_uI/sections/statusSection.dart';
import 'package:variousui/Facebook%20_uI/sections/storySection.dart';
import 'package:variousui/Widgets/Circularbutton.dart';
import 'package:variousui/Widgets/PostCard.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search is started");
              },
            ),
            CircularButton(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print("message is initalized");
                }),
          ],
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 6,
              color: Colors.grey[300],
            ),
            RoomSection(),
            Divider(
              thickness: 6,
              color: Colors.grey[300],
            ),
            StorySection(),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            PostCard(
              avathar: dul2,
              nameofavathar: "Dulquar",
              timeofpost: '2.12pm', posttitle: "Happybirthday", postimage: fahad,
              showbluetick: true, likeCount: '1k', shareCount: '600', commentCount: '400',
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            PostCard(
              avathar: jaysurya,
              nameofavathar: "Jayasurya",
              timeofpost: '3.13pm', posttitle: "My inspiration ", postimage: mammooty1,
              showbluetick: true, likeCount: '2k', shareCount: '800', commentCount: '200',
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            Suggestionsection(
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            PostCard(
              avathar: fahad,
              nameofavathar: "Fahad",
              timeofpost: '3.00pm', posttitle: " Best Wishes Ranjan Pramod, Dileesh Pothan and the entire team. Teaser streaming now on Bhavana Studios.", postimage: dul2,
              showbluetick: true, likeCount: '100k', shareCount: '1000', commentCount: '2000',
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            PostCard(
              avathar: dulquar,
              nameofavathar: "Dulqar",
              timeofpost: '3.46pm', posttitle: " We're grateful to the Jury of 13th Dada Saheb Phalke Film Festival for acknowledging our #SitaRamam as the Best Film - Jury of the year 2023 Humbled by this recognition", postimage: "assets/Avathar/image2.jpg",
              showbluetick: true, likeCount: '10k', shareCount: '3000', commentCount: '200',
            ),


          ],
        ),
      ),
    );
  }
}
