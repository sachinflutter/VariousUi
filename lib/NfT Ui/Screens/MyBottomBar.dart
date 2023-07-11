import 'package:flutter/material.dart';
class Mybottombar extends StatelessWidget {
  final int index;
  final Function(int?)onTap;
  Mybottombar({
    required this.onTap,required this.index
});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
        onTap: onTap,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home" ),
          BottomNavigationBarItem(icon:Icon(Icons.notification_important),label: "Home" ),
          BottomNavigationBarItem(icon:Icon(Icons.favorite),label: "Home" ),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: "Home" )
        ]
    );
  }
}
