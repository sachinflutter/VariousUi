import 'package:flutter/material.dart';
import 'package:variousui/Facebook%20_uI/assets.dart';
import 'package:variousui/Facebook%20_uI/sections/headerBiuttonsection.dart';
import 'package:variousui/Widgets/avathar.dart';
import 'package:variousui/Widgets/bluetick.dart';
import 'package:variousui/Widgets/lastpostcardsec.dart';

class PostCard extends StatelessWidget {
  late final String avathar;
  final String nameofavathar;
  final String timeofpost;
  final String posttitle;
  final String postimage;
  final bool showbluetick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard(
      {required this.avathar,
      required this.nameofavathar,
      required this.timeofpost,
      required this.posttitle,
      required this.postimage,
      this.showbluetick = false, required this.likeCount, required this.shareCount, required this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Postcardheader(),
        titlesection(),
        imagesection(),
        footersection(),
        Divider(
          thickness: 2,
          color: Colors.grey[300],
        ),
        lastPostCard(),

      ],
    );
  }

  Widget footersection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(width: 3,),
            Container(decoration: BoxDecoration(color:Colors.blue,shape: BoxShape.circle,),
                width: 15, height: 15, child: Icon(Icons.thumb_up,color: Colors.white,size: 10,)),
            SizedBox(width: 5,),
            displaytext(label: likeCount),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           displaytext(label: commentCount),
            SizedBox(width: 5,),
            displaytext(label: "Comments"),
            SizedBox(width: 10,),
            displaytext(label: shareCount),
            SizedBox(width: 5,),
            displaytext(label: "Shares"),
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 3,right: 3),
              child: Avatharr(displayImage: dul,maxrad: 14,),
            ),
            IconButton(onPressed: (){
              print("Dropdown Pressed");
            }, icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],))

          ],
        )
      ],
    );
  }
  Widget displaytext({required String label})
  {
    return Text(label==null?"":label,style: TextStyle(color: Colors.grey),);
  }

  Widget imagesection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage,fit: BoxFit.cover),
    );
  }

  Widget titlesection() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(5),
      child: Text(
        posttitle == null ? "" : posttitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget Postcardheader() {
    return ListTile(
      leading: Avatharr(displayImage: avathar),
      title: Row(
        children: [
          Text(
            nameofavathar,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showbluetick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(timeofpost == null ? "" : timeofpost),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
    );
  }
}
