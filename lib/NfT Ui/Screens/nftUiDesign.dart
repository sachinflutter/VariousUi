import "package:flutter/material.dart";
import "package:variousui/NfT%20Ui/Screens/Glassbox.dart";
import "package:variousui/NfT%20Ui/Screens/tabbarui.dart";
import "MyBottomBar.dart";
import "Myappbar.dart";
import "RecentTab.dart";
import "Topbar.dart";
import "TrendingTab.dart";
void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),),
  );// Wrap your app
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void _searchedButtonTapped()
  {

  }
  int _cuttentBottomindex=0;
  void _handleBottomIndexChange(int? index){
setState(() {
  _cuttentBottomindex=index!;
});
  }
  List Taboptions=[
    ["Recent", RecentTab()],
    ["Trending",TrendinTab()],
    ["Top",toptab()],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: Taboptions.length, child: Scaffold(
      backgroundColor: Colors.grey[300],
      body: Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: Glassbox(child: Mybottombar(onTap: _handleBottomIndexChange , index: _cuttentBottomindex,)),
        body: ListView(
          children: [
            MyappBar(
              title:"Explore Collections",
              onTap:_searchedButtonTapped,
            ),
            SizedBox(
              height: 600,
              child: MyTabbar(taboptions:Taboptions),
            ),
            
          ],
        ),
      ),
    ));
  }
}
